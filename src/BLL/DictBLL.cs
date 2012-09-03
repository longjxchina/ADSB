﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Linq.Expressions;

using BruceFramework.Model;
using BruceFramework.DAL;

namespace BruceFramework.BLL
{
    public class DictBLL : BaseBLL, IDictBLL
    {
        IDictDAL dal = new DictDAL();

        public Dict GetModel(int dictID)
        {
            return dal.GetModel(dictID);
        }

        public bool IsExistsCode(string code)
        {
            return dal.IsExistsCode(code);
        }
    }
}