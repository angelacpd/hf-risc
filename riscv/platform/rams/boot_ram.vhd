library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library UNISIM;
use UNISIM.vcomponents.all;

entity ram is
   generic(memory_type : string := "DEFAULT");
   port(clk               : in std_logic;
        enable            : in std_logic;
        write_byte_enable : in std_logic_vector(3 downto 0);
        address           : in std_logic_vector(31 downto 2);
        data_write        : in std_logic_vector(31 downto 0);
        data_read         : out std_logic_vector(31 downto 0));
end; --entity ram

architecture logic of ram is
   constant ZERO          : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
begin

   RAMB16_S9_inst0 : RAMB16_S9
   generic map (
INIT_00 => X"a3138333ef139313ef139393136f9313939313232323232323b7231363ef1317",
INIT_01 => X"b76723b7e3938337671383038303830383e3a3a31393038363239313239363e3",
INIT_02 => X"6363136713230383136713038313ef631393132323136703b7e3938337671303",
INIT_03 => X"13936f136f1333673363e3939333b363136313e393139363636f9313639313b3",
INIT_04 => X"136f9367336313e393b3639363e393139363636f93136393b3b393133363136f",
INIT_05 => X"63936393136393136393636393ef139393131393131323232323232323232323",
INIT_06 => X"239313136fef1313ef13efe31367130383038303830383038313e333ef131313",
INIT_07 => X"ef13136303ef13931363139323231367130383e303b3931313ef13136303ef23",
INIT_08 => X"378337232313b72323232323232323232323136fef1367130383e303b3931313",
INIT_09 => X"2393b72393b72393b72393b72393b7ef13e303ef13131337e303ef1313239313",
INIT_0A => X"931313132313931393939337b737b7b7b72393b72393b72393b72393b72393b7",
INIT_0B => X"93efef13e303ef931383e303ef939313e303ef939313e303ef939313e303ef93",
INIT_0C => X"efe303ef931383376f23efe303ef93131383efe303ef1313036783b393e393ef",
INIT_0D => X"efe303ef93131383efe303ef1313036f1393639393efe3ef63936f9323379393",
INIT_0E => X"0323efe303ef13132303efe303ef1313036fe31323b3e313efe303ef13139303",
INIT_0F => X"13136f93e303ef931383e39363ef13ef03b393e303ef931383ef13ef13e31393",
INIT_10 => X"e7e303ef931383376f13efe303ef1313036fe3b30383ef13e3ef13e3930363ef",
INIT_11 => X"93ef136fe303ef131303ef13e303ef131393036fef136f13efe303ef1313036f",
INIT_12 => X"787878787878787878787878847874706c6864393531333762666a6e72767a6f",
INIT_13 => X"7878787878787878c4783c78607878787878787878787878783c787878787878",
INIT_14 => X"646d200a2062200a79696175200a30324a2d647420520a1c7860787878787878",
INIT_15 => X"202928670a740a6520002d2e612020740a7820720a746577200a00666d200a00",
INIT_16 => X"00000000000000000000000000000000000000000000000065610a0065650a20",
INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000")
   port map (
      DO   => data_read(31 downto 24),
      DOP  => open, 
      ADDR => address(12 downto 2),
      CLK  => clk, 
      DI   => data_write(31 downto 24),
      DIP  => ZERO(0 downto 0),
      EN   => enable,
      SSR  => ZERO(0),
      WE   => write_byte_enable(3));

   RAMB16_S9_inst1 : RAMB16_S9
   generic map (
INIT_00 => X"0f07478500858509008585040a008a8a090484282e24262a2c1a220100000101",
INIT_01 => X"0780a0479cf7270780012a2a2929242420640f800487c746700007070007d816",
INIT_02 => X"d646068001802420058001242005f0ee84070726240180a5478cf727078075a5",
INIT_03 => X"0507f005f0060580050496d5d76586e6058005e6970795ce0a000707f6064605",
INIT_04 => X"01f0078005048598d586e4d78ce6970795cc08000707f80685c5d706055606f0",
INIT_05 => X"0804f60407fc04077204020407f00c0a0b0b0a09090422262426282a2c2e2024",
INIT_06 => X"26050601f0f00905f005f00c5480012c2b2b2a2a2929242420051a04f0091485",
INIT_07 => X"f004040445f0050506f804072624018001242012c587075414f004040445f024",
INIT_08 => X"142747a0a80747222426282a2c2e2022262401f0f0058001242012c587075414",
INIT_09 => X"268717248717228717208717268717f0051a45f0040405141a45f0040420e705",
INIT_0A => X"8405040a280b8b0c8c8a871b1b1c1c1a172e87172c87172c87172e87172a8717",
INIT_0B => X"04f0f0051ac5f08405241ac5f08484051ac5f08404051ac5f08484051ac5f084",
INIT_0C => X"f01ac5f084052404f020f01ac5f084050424f01a45f004052480a707976887f0",
INIT_0D => X"f01ac5f084050424f01a45f0040524f004848a09f7f00af08c89000900d90409",
INIT_0E => X"242af01a45f004052824f01a45f0040524f09c0400845875f01a45f009050429",
INIT_0F => X"040500041ac5f0840524928484f005f0c587041ac5f0840524f005f005560909",
INIT_10 => X"001ac5f084052404f004f01a45f0040524f0cc072727f00516f0046407450ef0",
INIT_11 => X"04f005f01a45f0040524f0851a45f004058424f0f005f004f01a45f0040524f0",
INIT_12 => X"050505050505050505050505087975716d696561363232366165696d717579f0",
INIT_13 => X"0505050505050505060507050805050505050505050505050508050505050505",
INIT_14 => X"7565205b006f425b006e6470555b31386120656c624948060506050505050505",
INIT_15 => X"203a68746c0a627362002d2e726266697729286561612072205b006965205b00",
INIT_16 => X"000000000000000000000000000000000000000000000000782064007820627c",
INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000")
   port map (
      DO   => data_read(23 downto 16),
      DOP  => open, 
      ADDR => address(12 downto 2),
      CLK  => clk, 
      DI   => data_write(23 downto 16),
      DIP  => ZERO(0 downto 0),
      EN   => enable,
      SSR  => ZERO(0),
      WE   => write_byte_enable(2));

   RAMB16_S9_inst2 : RAMB16_S9
   generic map (
INIT_00 => X"f71a35aa800409058004090907c04a0506050521114131918100510100c0c100",
INIT_01 => X"0300a7030727070300014181c1014181c1f4e4d714f70704f407f72af7d00409",
INIT_02 => X"05050000010581c104000181c104dfe70520e611810100070307170703001507",
INIT_03 => X"00105f001f10a000a006071517f5b6b6000700a517f7150507c01000a50516b0",
INIT_04 => X"019f1000d006060715b6b61707a517f7150507c01000a505f5b7f510a005001f",
INIT_05 => X"8505ea95f5ea95f59b054535055f80900090d0a0000091118171615141312181",
INIT_06 => X"1101a001df9ff9805f00df0944000181c1014181c1014181c10479945f194407",
INIT_07 => X"5f140005011f040100a705f0118101000181c10507870104049f140005015f81",
INIT_08 => X"00070007e72003918171615141312191118101df5f00000181c1050787010404",
INIT_09 => X"f14700f1c700f1c700f1c700f187001fa005041f14c4a0000504df1444f707a0",
INIT_0A => X"0aa05000f1cb4b0c0c8a47000000000000f14700f14700f1c700f10700f1c700",
INIT_0B => X"055fdfa00504df14a0c105045f140ba00504df140ca005045f140ca00504df14",
INIT_0C => X"1f05041f14a041009fa49f05049f14a005c19f05049f14a0010707fb27f4e4df",
INIT_0D => X"1f05041f14a005411f05041f14a001df14140705f45f05df09f9c00934030005",
INIT_0E => X"01a19f05049f14a0a1419f05049f14a001df8414a48490f51f05091f19a00581",
INIT_0F => X"14e040040504df1400c14414349f005f07840005049f140081df041fa0a0e070",
INIT_10 => X"0405041f14a0c1009f059f05049f14a001dfe7f44101dfc0949f14f90504941f",
INIT_11 => X"808f005f0504cf140081df040504df14d014019f5fa01f051f05041f14a0015f",
INIT_12 => X"000000000000000000000000007a76726e6a6662373331353964686c7074789f",
INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_14 => X"6d6d5d64006f5d620061206c5d7539206e00726f6f5346000000000000000000",
INIT_15 => X"0000656865006f0079003e0079696f6e613a6873640064695d77006c6d5d6600",
INIT_16 => X"0000000000000000000000000000000000000000000000002928610029287900",
INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000")
   port map (
      DO   => data_read(15 downto 8),
      DOP  => open, 
      ADDR => address(12 downto 2),
      CLK  => clk, 
      DI   => data_write(15 downto 8),
      DIP  => ZERO(0 downto 0),
      EN   => enable,
      SSR  => ZERO(0),
      WE   => write_byte_enable(1));

   RAMB16_S9_inst3 : RAMB16_S9
   generic map (
INIT_00 => X"fe0002001900000011000000000090000000000100010100000001fe0042ff50",
INIT_01 => X"e10000e1fe0040e1000200000001010101fefe0000ff00000200ff00000200fc",
INIT_02 => X"0006000001000000000001000000ec000002ff0000ff0000e1fe0040e1000040",
INIT_03 => X"0000fe00f90040004000fe0000004000000200fe00ff00000400000206000040",
INIT_04 => X"fdfd0000400000fe0040000000fe00ff000002000002040040004100400000fc",
INIT_05 => X"050000faf900fcfb02fd050500e4000101000000000002020101010101010302",
INIT_06 => X"020000fdf5d7ff00d802d8f60000030000010101010202020200fb00dd000000",
INIT_07 => X"ce00000200d40000010400000202fd00030202fefe00020101d400000200da02",
INIT_08 => X"0000e100001be10505050505050507060606f9facb0300030202fefe00020101",
INIT_09 => X"02ae0002ad0002ab0002aa0000a900c200fe00c300a30400fe00c400a2001500",
INIT_0A => X"000003010294a8a7a6a4ad00000000000002b10002b00000af0000b00002ae00",
INIT_0B => X"00b1ae00fe00af000000fe00b1000000fe00b2000000fe00b4000000fe00b500",
INIT_0C => X"a9fe00a700000240f100c2fe00a900000003c4fe00ab00000200000000f6fbb0",
INIT_0D => X"b8fe009f00000003bafe00a1000002fc00001e003fa6fea520ff000901000000",
INIT_0E => X"0100b0fe009700000003b2fe0099000002e3fe000000e40fb6fe009d00000003",
INIT_0F => X"00020101fe008f000201ff00139102c0000000fe0093000201c2009500de0500",
INIT_10 => X"00fe008700000240e000a2fe0089000002d3f44001018b07fe8c00fefe00008e",
INIT_11 => X"00fe02c8fe00ff000202a900fe008100020003e08302fc009efe0085000002cf",
INIT_12 => X"000000000000000000000000000077736f6b6763383430343863676b6f7377eb",
INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_14 => X"702020200074202c0072626f202c0032200020616f432d000000000000000000",
INIT_15 => X"000078206e006f00740020002e6e726769006573640061742020006c20202000",
INIT_16 => X"0000000000000000000000000000000000000000000000003a6874003a687400",
INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000")
   port map (
      DO   => data_read(7 downto 0),
      DOP  => open, 
      ADDR => address(12 downto 2),
      CLK  => clk, 
      DI   => data_write(7 downto 0),
      DIP  => ZERO(0 downto 0),
      EN   => enable,
      SSR  => ZERO(0),
      WE   => write_byte_enable(0));

end; --architecture logic