﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Threading.Tasks;
using Cisco_Script.Model;
using Cisco_Script.ViewModel;


namespace Cisco_Script.Controller {

    class CiscoController {

        private string currentDB;
        private List<Cisco_Device> ciscoDevices;
        private Cisco_Device currentDevice;

        #region Getter/Setter

        public string CurrentDB { get => currentDB; set => currentDB = value; }
        internal List<Cisco_Device> CiscoDevices { get => ciscoDevices; set => ciscoDevices = value; }
        internal Cisco_Device CurrentDevice { get => currentDevice; set => currentDevice = value; }

        #endregion

        public CiscoController(string _currentDB = null) {
            this.CurrentDB = _currentDB;
            this.CiscoDevices = new List<Cisco_Device>();
        }


        #region ViewModel

        public void AddDevice(bool modify = false) {

            AjouterDevice ajd = new AjouterDevice();
            ajd.ShowDialog();

            if (ajd.Cisco_dev.Type != null) {
                this.CiscoDevices.Add(ajd.Cisco_dev);

                if(modify) {
                    this.CiscoDevices.Remove(CurrentDevice);
                    this.CurrentDevice = null;
                }
            }
        }
        public void ModifyDevice() { this.AddDevice(true); }
        public void DeleteDevice() {  this.CiscoDevices.Remove(this.CurrentDevice); }
        public void DeleteAllDevices() { this.CiscoDevices.Clear(); }

        #endregion


        #region IMPORT/EXPORT

        public Cisco_Device Import() {

            if (this.CurrentDB == null) throw new Exception("CurrentDB is not selected, can't Import into unknow db file.");
            else {
                try {
                    Stream str = File.Open(this.CurrentDB, FileMode.Open);
                    BinaryFormatter bf = new BinaryFormatter();
                    this.CiscoDevices = (List<Cisco_Device>)bf.Deserialize(str);

                    str.Flush();
                    str.Close();
                    str.Dispose();

                }
                catch (Exception e) { throw new Exception(e.ToString()); }
            }
            return null;
        }

        public void Export() {

            if(this.CurrentDB == null) throw new Exception("CurrentDB is not selected, can't save into unknow db file.");
            else {
                try {
                    Stream str = File.Open(this.CurrentDB, FileMode.Create);

                    BinaryFormatter bf = new BinaryFormatter();
                    bf.Serialize(str, CiscoDevices);
                    
                    str.Flush();
                    str.Close();
                    str.Dispose();

                }
                catch (Exception e) { throw new Exception(e.ToString()); }
            }
            
        }

        #endregion

    }
}
