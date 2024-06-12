using Project_PSD.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using static Project_PSD.Repository.MakeMeUpzzRepo;

namespace Project_PSD.Handler
{
    public class MakeupHandler
    {
        private readonly IRepository<Makeup> _makeupRepository;

        public MakeupHandler(IRepository<Makeup> makeupRepository)
        {
            _makeupRepository = makeupRepository;
        }

        public IEnumerable<Makeup> GetAllMakeups()
        {
            return _makeupRepository.GetAll();
        }

        public Makeup GetMakeup(int id)
        {
            return _makeupRepository.Get(id);
        }

        public void AddMakeup(Makeup makeup)
        {
            _makeupRepository.Add(makeup);
        }

        public void UpdateMakeup(Makeup makeup)
        {
            _makeupRepository.Update(makeup);
        }

        public void DeleteMakeup(int id)
        {
            var makeup = _makeupRepository.Get(id);
            if (makeup != null)
            {
                _makeupRepository.Delete(makeup);
            }
        }
    }

}