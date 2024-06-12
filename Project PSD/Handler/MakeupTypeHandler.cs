using Project_PSD.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using static Project_PSD.Repository.MakeMeUpzzRepo;

namespace Project_PSD.Factory
{
    public class MakeupTypeHandler
    {
        private readonly IRepository<MakeupType> _makeupTypeRepository;

        public MakeupTypeHandler(IRepository<MakeupType> makeupTypeRepository)
        {
            _makeupTypeRepository = makeupTypeRepository;
        }

        public IEnumerable<MakeupType> GetAllMakeupTypes()
        {
            return _makeupTypeRepository.GetAll();
        }

        public MakeupType GetMakeupType(int id)
        {
            return _makeupTypeRepository.Get(id);
        }

        public void AddMakeupType(MakeupType makeupType)
        {
            _makeupTypeRepository.Add(makeupType);
        }

        public void UpdateMakeupType(MakeupType makeupType)
        {
            _makeupTypeRepository.Update(makeupType);
        }

        public void DeleteMakeupType(int id)
        {
            var makeupType = _makeupTypeRepository.Get(id);
            if (makeupType != null)
            {
                _makeupTypeRepository.Delete(makeupType);
            }
        }
    }

}