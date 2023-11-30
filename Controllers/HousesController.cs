namespace gregslist_dontnet.Controllers;

[ApiController]
[Route("api/[controller]")]
public class HousesController : ControllerBase
{
    private readonly HousesService _houseService;

    public HousesController(HousesService houseService)
    {
        _houseService = houseService;
    }

    [HttpGet]
    public ActionResult<List<House>> GetHouses()
    {
        try
        {
            List<House> houses = _houseService.GetHouses();
            return Ok(houses);
        }
        catch (Exception error)
        {

            return BadRequest(error.Message);
        }
    }

    [HttpGet("{houseId}")]
    public ActionResult<House> GetHouseById(int houseId)
    {
        try
        {
            House house = _houseService.GetHouseById(houseId);
            return Ok(house);
        }
        catch (Exception error)
        {

            return BadRequest(error.Message);
        }
    }


}
