public class Class 
{
    public static void main(String[] args)
    {
        MacBook generic = new MacBook("Pro 16 2019", 32, 1024, "cooooool", true);
        generic.flex();
        MacBook super_generic = new MacBook();
        super_generic.flex();
        System.out.println(super_generic.getCoolness());
        super_generic.setCoolness("okey, its fine");
        System.out.println(super_generic.getCoolness());
        Air macBookAir= new Air("Air 13 2021", 16, 256, "M1 top!!!", false, 13);
        macBookAir.flex();
        System.out.println(macBookAir.getScreenSize());
        macBookAir.show_Rom_and_Ram();
    }
}

class MacBook
{
    public String model;
    protected int ram;
    protected int rom;
    private String _coolness;
    boolean hasTouchBar;

    MacBook(){
        this.model = "old";
        this.ram = 2;
        this.rom = 256;
        this._coolness = "not really";
        this.hasTouchBar = false;
    }
    MacBook(String model, int ram, int rom, String coolness, boolean hasTouchBar){
        this.model = model;
        this.ram = ram;
        this.rom = rom;
        this._coolness = coolness;
        this.hasTouchBar = hasTouchBar;
    }

    public void flex(){
        if (this.model.equals("old")){
            System.out.println("Sorry but ur mac is too bad bro");
        } else {
            System.out.println("I want kids from u!!!!");
        }
    }

    public String getCoolness(){
        return this._coolness;
    }

    public void setCoolness(String coolness){
        this._coolness = coolness;
    }
}

class Air extends MacBook
{

    private int screenSize;

    Air(String model, int ram, int rom, String coolness, boolean hasTouchBar){
        super(model, ram, rom, coolness, hasTouchBar);
        this.screenSize = 13;
    }
    Air(String model, int ram, int rom, String coolness, boolean hasTouchBar, int screenSize){
        super(model, ram, rom, coolness, hasTouchBar);
        this.screenSize = screenSize;
    }

    @Override
    public void flex(){
        System.out.println("Air is always cool!!!!");
    }

    public int getScreenSize(){
        return this.screenSize;
    }

    public void show_Rom_and_Ram()
    {
        String toPrint = "Rom: " + String.valueOf(super.rom) + "\n" + "Ram: " + String.valueOf(super.ram);
        System.out.println(toPrint);
    }
}