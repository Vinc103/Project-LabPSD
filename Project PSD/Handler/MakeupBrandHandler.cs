using Project_PSD.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using static Project_PSD.Repository.MakeMeUpzzRepo;

namespace Project_PSD.Handler
{
    public class MakeupBrandHandler
    {
        private readonly IRepository<MakeupBrand> _makeupBrandRepository;

        public MakeupBrandHandler(IRepository<MakeupBrand> makeupBrandRepository)
        {
            _makeupBrandRepository = makeupBrandRepository;
        }

        public IEnumerable<MakeupBrand> GetAllMakeupBrands()
        {
            return _makeupBrandRepository.GetAll();
        }

        public MakeupBrand GetMakeupBrand(int id)
        {
            return _makeupBrandRepository.Get(id);
        }

        public void AddMakeupBrand(MakeupBrand makeupBrand)
        {
            _makeupBrandRepository.Add(makeupBrand);
        }

        public void UpdateMakeupBrand(MakeupBrand makeupBrand)
        {
            _makeupBrandRepository.Update(makeupBrand);
        }

        public void DeleteMakeupBrand(int id)
        {
            var makeupBrand = _makeupBrandRepository.Get(id);
            if (makeupBrand != null)
            {
                _makeupBrandRepository.Delete(makeupBrand);
            }
        }
    }


}