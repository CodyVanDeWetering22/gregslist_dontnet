

namespace gregslist_dontnet.Services
{
    public class HousesService
    {
        private readonly HousesRepository _housesRepository;

        public HousesService(HousesRepository housesRepository)
        {
            _housesRepository = housesRepository;
        }

        internal House GetHouseById(int houseId)
        {
            House house = _housesRepository.GetHouseById(houseId);
            if (house == null)
            {
                throw new Exception($"Invalid Id: {houseId}");
            }
            return house;
        }

        internal List<House> GetHouses()

        {
            List<House> houses = _housesRepository.GetHouses();
            return houses;
        }
    }
}