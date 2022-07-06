contract main {




// =====================  Runtime code  =====================


#
#  - sub_2f925555(?)
#  - sub_60a3b95c(?)
#
address owner;
uint256 stor1;
address factoryAddress;
address sub_a96fbed4Address;
address sub_af640d82Address;
address bridgeAddress;
array of struct stor6;
mapping of struct stor7;

function owner() {
    return owner
}

function sub_a96fbed4(?) {
    return sub_a96fbed4Address
}

function sub_af640d82(?) {
    return sub_af640d82Address
}

function factory() {
    return factoryAddress
}

function bridge() {
    return bridgeAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_34aba410(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not address(arg1):
        revert with 0, 'Stargate: _owner cannot be 0x0'
    sub_a96fbed4Address = address(arg1)
}

function sub_cefbdde2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not address(arg1):
        revert with 0, 'Stargate: _owner cannot be 0x0'
    sub_af640d82Address = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_424c9119(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if bridgeAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Stargate: bridge and factory already initialized'
    if factoryAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Stargate: bridge and factory already initialized'
    if not address(arg1):
        revert with 0, 'Stargate: bridge cant be 0x0'
    if not address(arg2):
        revert with 0, 'Stargate: factory cant be 0x0'
    bridgeAddress = address(arg1)
    factoryAddress = address(arg2)
}

function sub_fba6e280(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPool(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Stargate: Pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x7fb65265 with:
         gas gas_remaining wei
        args bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFees(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPool(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Stargate: Pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setFee(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_98e391a1(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPool(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Stargate: Pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xac2cc36b with:
         gas gas_remaining wei
        args bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c6a27624(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPool(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Stargate: Pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4b5cacbc with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c7d968e3(?) {
    require calldata.size - 4 >= 96
    require arg2 == uint16(arg2)
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPool(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Stargate: Pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8bd86d0a with:
         gas gas_remaining wei
        args arg2 << 240, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5500585c(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if sub_af640d82Address != msg.sender:
        revert with 0, 'Stargate: only mintFeeOwner'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPool(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Stargate: Pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x476efe40 with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_16fb60f5(?) {
    require calldata.size - 4 >= 128
    require arg2 == uint16(arg2)
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPool(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Stargate: Pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x20d6bc75 with:
         gas gas_remaining wei
        args arg2 << 240, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c8adf12d(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if sub_a96fbed4Address != msg.sender:
        revert with 0, 'Stargate: only protocolFeeOwner'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPool(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Stargate: Pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xbe310294 with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7b84d287(?) {
    require calldata.size - 4 >= 128
    require arg2 == uint16(arg2)
    require arg4 == uint16(arg4)
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPool(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Stargate: Pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa985565f with:
         gas gas_remaining wei
        args arg2 << 240, arg3, uint16(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a18fa804(?) {
    require calldata.size - 4 >= 160
    require arg1 == uint16(arg1)
    require calldata.size - 100 >= 64
    if bridgeAddress != msg.sender:
        revert with 0, 'Bridge: caller must be Bridge.'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPool(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Stargate: Pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb6addec7 with:
         gas gas_remaining wei
        args arg1 << 240, arg2, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_43a30630(?) {
    require calldata.size - 4 >= 192
    require arg2 == bool(arg2)
    require arg5 == bool(arg5)
    require arg6 == bool(arg6)
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPool(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Stargate: Pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xe065608b with:
         gas gas_remaining wei
        args bool(arg2), arg3, arg4, bool(arg5), bool(arg6)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c4de93a5(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint16(arg1)
    require arg3 == address(arg3)
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Stargate: not enough lp to redeem'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPool(uint256 arg1) with:
            gas gas_remaining wei
           args uint16(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Stargate: Pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x986b61a with:
         gas gas_remaining wei
        args msg.sender, arg2, address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1 = 1
    return ext_call.return_data[0]
}

function sub_9ba3aa74(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint16(arg1)
    require arg4 == address(arg4)
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not address(arg4):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Stargate: _refundAddress cannot be 0x0'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPool(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Stargate: Pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8e9d8c2 with:
         gas gas_remaining wei
        args arg1 << 240, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((2 * ceil32(return_data.size)) + 160 <= test266151307())
    require ext_code.size(bridgeAddress)
    call bridgeAddress.0xbe9d40ac with:
       value msg.value wei
         gas gas_remaining wei
        args arg1 << 240, arg2, arg3, address(arg4), ext_call.return_data[0], ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function sub_403a9f7a(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    idx = 256
    s = 0
    while stor7[arg1 << 240][arg2[all]][arg3][3].length + 224 > idx:
        mem[idx + 32] = stor7[arg1 << 240][arg2[all]][arg3][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not address(stor7[arg1 << 240][arg2[all]][arg3].field_512):
        revert with 0, 'Stargate: cache already cleared'
    address(stor7[arg1 << 240][arg2[all]][arg3].field_0) = 0
    stor7[arg1 << 240][arg2[all]][arg3].field_256 % 1 = 0
    stor7[arg1 << 240][arg2[all]][arg3].field_256 = 0
    address(stor7[arg1 << 240][arg2[all]][arg3].field_512) = 0
    stor7[arg1 << 240][arg2[all]][arg3].field_768 % 1 = 0
    stor7[arg1 << 240][arg2[all]][arg3].field_768 = 0
    idx = 0
    while stor7[arg1 << 240][arg2[all]][arg3][3].length + 31 / 32 > idx:
        stor7[arg1 << 240][arg2[all]][arg3][idx + 3].field_0 = 0
        idx = idx + 1
        continue 
    require ext_code.size(address(stor7[arg1 << 240][arg2[all]][arg3].field_512))
    call address(stor7[arg1 << 240][arg2[all]][arg3].field_512).0xab8236f3 with:
         gas gas_remaining wei
        args arg1 << 240, Array(len=arg2.length, data=arg2[all]), arg3, address(stor7[arg1 << 240][arg2[all]][arg3].field_0), stor7[arg1 << 240][arg2[all]][arg3].field_256, ceil32(arg2.length) + 224
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_da133a06(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = stor6[arg1][arg2[all]][arg3].length
    mem[ceil32(arg2.length) + 160] = stor6[arg1][arg2[all]][arg3].field_0
    idx = ceil32(arg2.length) + 160
    s = 0
    while ceil32(arg2.length) + stor6[arg1][arg2[all]][arg3].length + 128 > idx:
        mem[idx + 32] = stor6[arg1][arg2[all]][arg3][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg2.length) + ceil32(stor6[arg1][arg2[all]][arg3].length) + 160] = 32
    mem[ceil32(arg2.length) + ceil32(stor6[arg1][arg2[all]][arg3].length) + 192] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(stor6[arg1][arg2[all]][arg3].length) + 224 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
        mem[ceil32(arg2.length) + ceil32(stor6[arg1][arg2[all]][arg3].length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 224] = 0
    return memory
      from ceil32(arg2.length) + ceil32(stor6[arg1][arg2[all]][arg3].length) + 160
       len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 64
}

function sub_23fd4647(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = stor7[arg1][arg2[all]][arg3][3].length
    mem[ceil32(arg2.length) + 160] = stor7[arg1][arg2[all]][arg3][3].field_0
    idx = ceil32(arg2.length) + 160
    s = 0
    while ceil32(arg2.length) + stor7[arg1][arg2[all]][arg3][3].length + 128 > idx:
        mem[idx + 32] = stor7[arg1][arg2[all]][arg3][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg2.length) + ceil32(stor7[arg1][arg2[all]][arg3][3].length) + 160] = address(stor7[arg1][arg2[all]][arg3].field_0)
    mem[ceil32(arg2.length) + ceil32(stor7[arg1][arg2[all]][arg3][3].length) + 192] = stor7[arg1][arg2[all]][arg3].field_256
    mem[ceil32(arg2.length) + ceil32(stor7[arg1][arg2[all]][arg3][3].length) + 224] = address(stor7[arg1][arg2[all]][arg3].field_512)
    mem[ceil32(arg2.length) + ceil32(stor7[arg1][arg2[all]][arg3][3].length) + 256] = 128
    mem[ceil32(arg2.length) + ceil32(stor7[arg1][arg2[all]][arg3][3].length) + 288] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(stor7[arg1][arg2[all]][arg3][3].length) + 320 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
        mem[ceil32(arg2.length) + ceil32(stor7[arg1][arg2[all]][arg3][3].length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 320] = 0
    return memory
      from ceil32(arg2.length) + ceil32(stor7[arg1][arg2[all]][arg3][3].length) + 160
       len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160
}

function sub_0a512369(?) {
    require calldata.size - 4 >= 160
    require cd[4] == uint16(cd[4])
    require cd[36] == uint8(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    require cd[132] <= test266151307()
    require calldata.size + -cd[132] - 4 >= 96
    require ('cd', 132)[1] <= test266151307()
    require cd[132] + ('cd', 132)[1] + 35 < calldata.size
    require cd[(cd[132] + ('cd', 132)[1] + 4)] <= test266151307()
    require ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + 224 >= 192 and ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + 224 <= test266151307()
    require cd[132] + ('cd', 132)[1] + cd[(cd[132] + ('cd', 132)[1] + 4)] + 36 <= calldata.size
    mem[224 len cd[(cd[132] + ('cd', 132)[1] + 4)]] = call.data[cd[132] + ('cd', 132)[1] + 36 len cd[(cd[132] + ('cd', 132)[1] + 4)]]
    mem[cd[(cd[132] + ('cd', 132)[1] + 4)] + 224] = 0
    mem[ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + 224] = 0xa51236900000000000000000000000000000000000000000000000000000000
    mem[ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + ceil32(('cd', 68).length) + 420] = ('cd', 100).length
    mem[ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + ceil32(('cd', 68).length) + 452 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
    mem[ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + ceil32(('cd', 68).length) + ('cd', 100).length + 452] = 0
    mem[ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + ceil32(('cd', 68).length) + ceil32(('cd', 100).length) + 452] = ('cd', 132).length
    require ext_code.size(bridgeAddress)
    staticcall bridgeAddress with:
            gas gas_remaining wei
           args cd[4] << 240, cd[36] << 248, 160, ceil32(('cd', 68).length) + 192, ceil32(('cd', 68).length) + ceil32(('cd', 100).length) + 224, ('cd', 68).length, call.data[cd[68] + 36 len ('cd', 68).length], 0, mem[ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + ('cd', 68).length + 452 len ceil32(('cd', 68).length) + ceil32(('cd', 100).length) + -('cd', 68).length + 32], ('cd', 132)[0], 96, cd[(cd[132] + ('cd', 132)[1] + 4)], call.data[cd[132] + ('cd', 132)[1] + 36 len cd[(cd[132] + ('cd', 132)[1] + 4)]], mem[cd[(cd[132] + ('cd', 132)[1] + 4)] + 224 len ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) - cd[(cd[132] + ('cd', 132)[1] + 4)]]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return 0, ext_call.return_data[4 len 28], ext_call.return_data[32]
}

function sub_7af935a1(?) {
    require calldata.size - 4 >= 192
    require arg2 == address(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg5.length) + 128 >= 96 and ceil32(arg5.length) + 128 <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require ceil32(arg6.length) + 160 >= 128 and ceil32(arg5.length) + ceil32(arg6.length) + 160 <= test266151307()
    mem[ceil32(arg5.length) + 128] = arg6.length
    require arg6 + arg6.length + 36 <= calldata.size
    mem[ceil32(arg5.length) + 160 len arg6.length] = arg6[all]
    mem[ceil32(arg5.length) + arg6.length + 160] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not address(arg2):
        revert with 0, 'Stargate: _token cannot be 0x0'
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 160] = 0x7af935a100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 164] = arg1
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 196] = address(arg2)
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 228] = uint8(arg3)
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 260] = uint8(arg4)
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 292] = 192
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 356] = arg5.length
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 388 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    if ceil32(arg5.length) > arg5.length:
        mem[ceil32(arg5.length) + ceil32(arg6.length) + arg5.length + 388] = 0
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 324] = ceil32(arg5.length) + 224
    mem[(2 * ceil32(arg5.length)) + ceil32(arg6.length) + 388] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
    mem[(2 * ceil32(arg5.length)) + ceil32(arg6.length) + 420 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg5.length) + 160 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])]
    if ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) > Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]:
        mem[(2 * ceil32(arg5.length)) + ceil32(arg6.length) + Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + 420] = 0
    require ext_code.size(factoryAddress)
    call factoryAddress with:
         gas gas_remaining wei
        args mem[ceil32(arg5.length) + ceil32(arg6.length) + 164 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + ceil32(arg5.length) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_8f2e1d18(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] == uint16(cd[4])
    require cd[100] == address(cd[100])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + ('cd', 164).length + 36 <= calldata.size
    require cd[196] <= test266151307()
    require calldata.size + -cd[196] - 4 >= 96
    require ('cd', 196)[1] <= test266151307()
    require cd[196] + ('cd', 196)[1] + 35 < calldata.size
    require cd[(cd[196] + ('cd', 196)[1] + 4)] <= test266151307()
    require ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + 224 >= 192 and ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + 224 <= test266151307()
    require cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 4)] + 36 <= calldata.size
    mem[224 len cd[(cd[196] + ('cd', 196)[1] + 4)]] = call.data[cd[196] + ('cd', 196)[1] + 36 len cd[(cd[196] + ('cd', 196)[1] + 4)]]
    mem[cd[(cd[196] + ('cd', 196)[1] + 4)] + 224] = 0
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not address(cd[100]):
        revert with 0, 'Stargate: _refundAddress cannot be 0x0'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPool(uint256 arg1) with:
            gas gas_remaining wei
           args cd[36]
    mem[ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Stargate: Pool does not exist'
    if cd[132] <= 0:
        revert with 0, 'Stargate: not enough lp to redeem'
    require ext_code.size(address(ext_call.return_data[4 len 28]))
    call address(ext_call.return_data[4 len 28]).0xb0fab0bc with:
         gas gas_remaining wei
        args msg.sender, cd[132], cd[4] << 240, cd[68], Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
    mem[ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Stargate: not enough lp to redeem with amountSD'
    require ext_code.size(address(ext_call.return_data[4 len 28]))
    call address(ext_call.return_data[4 len 28]).0x8e9d8c2 with:
         gas gas_remaining wei
        args cd[4] << 240, cd[68]
    mem[ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (2 * ceil32(return_data.size)) + 224 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool(ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (4 * ceil32(return_data.size)) + 288 <= test266151307())
    mem[ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    mem[ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (4 * ceil32(return_data.size)) + ceil32(('cd', 164).length) + 612] = ('cd', 196).length
    mem[ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (4 * ceil32(return_data.size)) + ceil32(('cd', 164).length) + 644] = ('cd', 196)[0]
    require ext_code.size(bridgeAddress)
    call bridgeAddress.0x3cef94b9 with:
       value msg.value wei
         gas gas_remaining wei
        args cd[4] << 240, cd[36], cd[68], address(cd[100]), ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[0], 288, ceil32(('cd', 164).length) + 320, ('cd', 164).length, call.data[cd[164] + 36 len ('cd', 164).length], 0, mem[ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (4 * ceil32(return_data.size)) + ('cd', 164).length + 644 len ceil32(('cd', 164).length) + -('cd', 164).length + 32], 96, cd[(cd[196] + ('cd', 196)[1] + 4)], call.data[cd[196] + ('cd', 196)[1] + 36 len cd[(cd[196] + ('cd', 196)[1] + 4)]], mem[cd[(cd[196] + ('cd', 196)[1] + 4)] + 224 len ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) - cd[(cd[196] + ('cd', 196)[1] + 4)]]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function sub_84d0dba3(?) payable {
    require calldata.size - 4 >= 256
    require cd[4] == uint16(cd[4])
    require cd[100] == address(cd[100])
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require cd[196] + ('cd', 196).length + 36 <= calldata.size
    require cd[228] <= test266151307()
    require calldata.size + -cd[228] - 4 >= 96
    require ('cd', 228)[1] <= test266151307()
    require cd[228] + ('cd', 228)[1] + 35 < calldata.size
    require cd[(cd[228] + ('cd', 228)[1] + 4)] <= test266151307()
    require ceil32(cd[(cd[228] + ('cd', 228)[1] + 4)]) + 224 >= 192 and ceil32(cd[(cd[228] + ('cd', 228)[1] + 4)]) + 224 <= test266151307()
    require cd[228] + ('cd', 228)[1] + cd[(cd[228] + ('cd', 228)[1] + 4)] + 36 <= calldata.size
    mem[224 len cd[(cd[228] + ('cd', 228)[1] + 4)]] = call.data[cd[228] + ('cd', 228)[1] + 36 len cd[(cd[228] + ('cd', 228)[1] + 4)]]
    mem[cd[(cd[228] + ('cd', 228)[1] + 4)] + 224] = 0
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not address(cd[100]):
        revert with 0, 'Stargate: _refundAddress cannot be 0x0'
    if cd[132] <= 0:
        revert with 0, 'Stargate: not enough lp to redeemRemote'
    mem[ceil32(cd[(cd[228] + ('cd', 228)[1] + 4)]) + 224] = 0
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPool(uint256 arg1) with:
            gas gas_remaining wei
           args cd[36]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Stargate: Pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf6cd35ee with:
            gas gas_remaining wei
           args cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1b7319b6 with:
         gas gas_remaining wei
        args cd[4] << 240, cd[68], msg.sender, ext_call.return_data[0], cd[164], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require bool(ceil32(cd[(cd[228] + ('cd', 228)[1] + 4)]) + (4 * ceil32(return_data.size)) + 672 <= test266151307())
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x7298a5dc with:
         gas gas_remaining wei
        args cd[4] << 240, cd[68], msg.sender, cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8e9d8c2 with:
         gas gas_remaining wei
        args cd[4] << 240, cd[68]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool(ceil32(cd[(cd[228] + ('cd', 228)[1] + 4)]) + (6 * ceil32(return_data.size)) + 736 <= test266151307())
    mem[(2 * ceil32(cd[(cd[228] + ('cd', 228)[1] + 4)])) + (6 * ceil32(return_data.size)) + ceil32(('cd', 196).length) + 1380] = 0
    require ext_code.size(bridgeAddress)
    call bridgeAddress.0x51156e73 with:
       value msg.value wei
         gas gas_remaining wei
        args cd[4] << 240, cd[36], cd[68], address(cd[100]), ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], 480, ceil32(cd[(cd[228] + ('cd', 228)[1] + 4)]) + 608, ceil32(cd[(cd[228] + ('cd', 228)[1] + 4)]) + ceil32(('cd', 196).length) + 640, ('cd', 228).length, ('cd', 228)[0], 96, cd[(cd[228] + ('cd', 228)[1] + 4)], Mask(8 * ceil32(cd[(cd[228] + ('cd', 228)[1] + 4)]), -(8 * ceil32(cd[(cd[228] + ('cd', 228)[1] + 4)])) + 256, call.data[cd[228] + ('cd', 228)[1] + 36 len cd[(cd[228] + ('cd', 228)[1] + 4)]], mem[cd[(cd[228] + ('cd', 228)[1] + 4)] + 224 len ceil32(cd[(cd[228] + ('cd', 228)[1] + 4)]) - cd[(cd[228] + ('cd', 228)[1] + 4)]]) << (8 * ceil32(cd[(cd[228] + ('cd', 228)[1] + 4)])) - 256, ('cd', 196).length, call.data[cd[196] + 36 len ('cd', 196).length], 0, mem[(2 * ceil32(cd[(cd[228] + ('cd', 228)[1] + 4)])) + (6 * ceil32(return_data.size)) + ('cd', 196).length + 1412 len ceil32(('cd', 196).length) - ('cd', 196).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function sub_7f721298(?) {
    require calldata.size - 4 >= 256
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg6 == address(arg6)
    if bridgeAddress != msg.sender:
        revert with 0, 'Bridge: caller must be Bridge.'
    mem[ceil32(arg2.length) + 132] = arg5
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPool(uint256 arg1) with:
            gas gas_remaining wei
           args arg5
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Stargate: Pool does not exist'
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = 0xb30daeac00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 132] = uint16(arg1)
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 164] = arg4
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 196] = address(arg6)
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 228] = arg7
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 260] = arg8
    require ext_code.size(address(ext_call.return_data[4 len 28]))
    call address(ext_call.return_data[4 len 28]).0xb30daeac with:
         gas gas_remaining wei
        args arg1 << 240, arg4, address(arg6), arg7, arg8
    if ext_call.success:
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        emit 0xc7379a02: arg1 << 240, arg4, arg5, address(arg6), arg7, arg8, sha3(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128 len arg2.length]), arg3
    else:
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 160] = 2
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 192] = arg4
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 224] = arg5
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 256] = address(arg6)
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 288] = arg7
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 320] = arg8
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = 192
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 352 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        mem[arg2.length + ceil32(arg2.length) + ceil32(return_data.size) + 352] = sha3(arg1 << 240, 6)
        stor[mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 352 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256][arg3] = 385
        s = 0
        idx = ceil32(arg2.length) + ceil32(return_data.size) + 160
        while ceil32(arg2.length) + ceil32(return_data.size) + 352 > idx:
            stor[mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 352 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256][arg3][s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 6
        while stor[mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 352 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256][arg3].length + 31 / 32 > idx:
            stor[mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 352 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256][arg3][idx] = 0
            idx = idx + 1
            continue 
        emit 0xa5d2ba6d: 2, arg1 << 240, Array(len=arg2.length, data=arg2[all]), arg3
        emit 0xc7379a02: arg1 << 240, arg4, arg5, address(arg6), arg7, arg8, sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256), arg3
}

function addLiquidity(uint256 arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    mem[100] = arg1
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPool(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Stargate: Pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).convertRate() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if not arg2 / ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 96] = 100
        mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[(4 * ceil32(return_data.size)) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), 0, mem[(4 * ceil32(return_data.size)) + 228 len 28]
        call address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 228 len 4] with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + 232 len 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Stargate: TRANSFER_FROM_FAILED'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(arg1), mem[132 len 28] == bool(uint32(arg1), mem[132 len 28])
                if not uint32(arg1), mem[132 len 28]:
                    revert with 0, 'Stargate: TRANSFER_FROM_FAILED'
        else:
            mem[(4 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Stargate: TRANSFER_FROM_FAILED'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 260] == bool(mem[(4 * ceil32(return_data.size)) + 260])
                if not mem[(4 * ceil32(return_data.size)) + 260]:
                    revert with 0, 'Stargate: TRANSFER_FROM_FAILED'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x40c10f19 with:
             gas gas_remaining wei
            args address(arg3), 0
    else:
        if ext_call.return_data[0] * arg2 / ext_call.return_data[0] / arg2 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(2 * ceil32(return_data.size)) + 197 len 31]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 96] = 100
        mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[(4 * ceil32(return_data.size)) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 228 len 28]
        call address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 228 len 4] with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + 232 len 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Stargate: TRANSFER_FROM_FAILED'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(arg1), mem[132 len 28] == bool(uint32(arg1), mem[132 len 28])
                if not uint32(arg1), mem[132 len 28]:
                    revert with 0, 'Stargate: TRANSFER_FROM_FAILED'
        else:
            mem[(4 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Stargate: TRANSFER_FROM_FAILED'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 260] == bool(mem[(4 * ceil32(return_data.size)) + 260])
                if not mem[(4 * ceil32(return_data.size)) + 260]:
                    revert with 0, 'Stargate: TRANSFER_FROM_FAILED'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x40c10f19 with:
             gas gas_remaining wei
            args address(arg3), ext_call.return_data[0] * arg2 / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1 = 1
}

function sub_0403bce5(?) {
    require calldata.size - 4 >= 224
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    require arg7.length <= test266151307()
    require arg7 + arg7.length + 36 <= calldata.size
    if bridgeAddress != msg.sender:
        revert with 0, 'Bridge: caller must be Bridge.'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPool(uint256 arg1) with:
            gas gas_remaining wei
           args arg5
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Stargate: Pool does not exist'
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 164] = arg4
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 196] = arg6
    require ext_code.size(address(ext_call.return_data[4 len 28]))
    call address(ext_call.return_data[4 len 28]).0xea89e2aa with:
         gas gas_remaining wei
        args arg1 << 240, arg4, arg6
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 384 len arg7.length] = arg7[all]
        mem[ceil32(arg2.length) + ceil32(return_data.size) + arg7.length + 384] = 0
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = ceil32(arg7.length) + 224
        mem[ceil32(arg2.length) + ceil32(return_data.size) + ceil32(arg7.length) + 384 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        mem[arg2.length + ceil32(arg2.length) + ceil32(return_data.size) + ceil32(arg7.length) + 384] = sha3(arg1 << 240, 6)
        if ceil32(arg7.length) + 224:
            stor[mem[ceil32(arg2.length) + ceil32(return_data.size) + arg7.length + 416 len arg2.length - arg7.length + ceil32(arg7.length)]][Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0)][arg3][] = Array(len=ceil32(arg7.length) + 224, data=1, arg4, arg5, 0, arg6, 192, arg7.length, arg7[all], mem[ceil32(arg2.length) + ceil32(return_data.size) + arg7.length + 384 len ceil32(arg7.length) - arg7.length])
        else:
            stor[mem[ceil32(arg2.length) + ceil32(return_data.size) + arg7.length + 416 len arg2.length - arg7.length + ceil32(arg7.length)]][Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0)][arg3] = 0
            idx = 0
            while stor[mem[ceil32(arg2.length) + ceil32(return_data.size) + arg7.length + 416 len arg2.length - arg7.length + ceil32(arg7.length)]][Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0)][arg3].length + 31 / 32 > idx:
                stor[mem[ceil32(arg2.length) + ceil32(return_data.size) + arg7.length + 416 len arg2.length - arg7.length + ceil32(arg7.length)]][Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0)][arg3][idx] = 0
                idx = idx + 1
                continue 
        mem[ceil32(arg2.length) + ceil32(return_data.size) + ceil32(arg7.length) + 384] = 1
        mem[ceil32(arg2.length) + ceil32(return_data.size) + ceil32(arg7.length) + 416] = uint16(arg1)
        emit 0xa5d2ba6d: Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(return_data.size) + arg7.length + 416 len ceil32(arg7.length) + -arg7.length + 32], Array(len=arg2.length, data=arg2[all]), arg3
    else:
        require return_data.size >= 64
        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 384 len arg7.length] = arg7[all]
        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + arg7.length + 384] = 0
        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 128] = ceil32(arg7.length) + 224
        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(arg7.length) + 384 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        mem[arg2.length + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(arg7.length) + 384] = sha3(arg1 << 240, 6)
        if ceil32(arg7.length) + 224:
            stor[mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + arg7.length + 416 len arg2.length - arg7.length + ceil32(arg7.length)]][Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0)][arg3][] = Array(len=ceil32(arg7.length) + 224, data=1, arg4, arg5, ext_call.return_data[0], ext_call.return_data[32], 192, arg7.length, arg7[all], mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + arg7.length + 384 len ceil32(arg7.length) - arg7.length])
        else:
            stor[mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + arg7.length + 416 len arg2.length - arg7.length + ceil32(arg7.length)]][Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0)][arg3] = 0
            idx = 0
            while stor[mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + arg7.length + 416 len arg2.length - arg7.length + ceil32(arg7.length)]][Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0)][arg3].length + 31 / 32 > idx:
                stor[mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + arg7.length + 416 len arg2.length - arg7.length + ceil32(arg7.length)]][Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0)][arg3][idx] = 0
                idx = idx + 1
                continue 
        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(arg7.length) + 384 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(arg7.length) + arg2.length + 384] = 0
        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(arg7.length) + 384] = uint16(arg1)
        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(arg7.length) + 416] = arg4
        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(arg7.length) + 448] = arg5
        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(arg7.length) + 480] = 192
        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(arg7.length) + 576] = arg7.length
        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(arg7.length) + 512] = ext_call.return_data[0]
        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(arg7.length) + 544] = ext_call.return_data[32]
        emit 0x6ace246f: Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + arg7.length + 416 len (2 * ceil32(arg7.length)) + -arg7.length + 192], arg3, sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256)
}

function sub_6a7982da(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == uint16(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require calldata.size + -cd[132] - 4 >= 96
    mem[96] = ('cd', 132).length
    mem[128] = ('cd', 132)[0]
    require ('cd', 132)[1] <= test266151307()
    require cd[132] + ('cd', 132)[1] + 35 < calldata.size
    require cd[(cd[132] + ('cd', 132)[1] + 4)] <= test266151307()
    require ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + 224 >= 192 and ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + 224 <= test266151307()
    mem[192] = cd[(cd[132] + ('cd', 132)[1] + 4)]
    require cd[132] + ('cd', 132)[1] + cd[(cd[132] + ('cd', 132)[1] + 4)] + 36 <= calldata.size
    mem[224 len cd[(cd[132] + ('cd', 132)[1] + 4)]] = call.data[cd[132] + ('cd', 132)[1] + 36 len cd[(cd[132] + ('cd', 132)[1] + 4)]]
    mem[cd[(cd[132] + ('cd', 132)[1] + 4)] + 224] = 0
    mem[160] = 192
    if not address(cd[100]):
        revert with 0, 'Stargate: _refundAddress cannot be 0x0'
    mem[ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + 224 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[('cd', 36).length + ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + 224] = sha3(cd[4] << 240, 6)
    _7 = sha3(Mask(8 * -ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + cd[(cd[132] + ('cd', 132)[1] + 4)] + 32, 0, 0), mem[cd[(cd[132] + ('cd', 132)[1] + 4)] + 256 len ('cd', 36).length - cd[(cd[132] + ('cd', 132)[1] + 4)] + ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)])])
    _8 = sha3(cd[68], sha3(Mask(8 * -ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + cd[(cd[132] + ('cd', 132)[1] + 4)] + 32, 0, 0), mem[cd[(cd[132] + ('cd', 132)[1] + 4)] + 256 len ('cd', 36).length - cd[(cd[132] + ('cd', 132)[1] + 4)] + ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)])]))
    mem[64] = ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + ceil32(stor[mem[cd[(cd[132] + ('cd', 132)[1] + 4)] + 256 len ('cd', 36).length - cd[(cd[132] + ('cd', 132)[1] + 4)] + ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)])]][Mask(8 * -ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + cd[(cd[132] + ('cd', 132)[1] + 4)] + 32, 0, 0)][cd[68]].length) + 256
    mem[ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + 224] = stor[mem[cd[(cd[132] + ('cd', 132)[1] + 4)] + 256 len ('cd', 36).length - cd[(cd[132] + ('cd', 132)[1] + 4)] + ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)])]][Mask(8 * -ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + cd[(cd[132] + ('cd', 132)[1] + 4)] + 32, 0, 0)][cd[68]].length
    mem[0] = _8
    mem[ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + 256] = stor[sha3(_8)]
    idx = ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + 256
    s = 0
    while ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + stor[_8].length + 224 > idx:
        mem[idx + 32] = stor[s + sha3(_8) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    if Mask(8 * -ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + cd[(cd[132] + ('cd', 132)[1] + 4)] + 32, 0, 0), mem[cd[(cd[132] + ('cd', 132)[1] + 4)] + 256 len -cd[(cd[132] + ('cd', 132)[1] + 4)] + ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)])] <= 0:
        revert with 0, 'Stargate: no retry revert'
    if mem[ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + 287 len 1] != 1:
        revert with 0, 'Stargate: invalid function type'
    _451 = mem[64]
    mem[64] = mem[64] + 32
    mem[_451] = 0
    mem[mem[64] len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[('cd', 36).length + mem[64]] = sha3(cd[4] << 240, 6)
    mem[32] = sha3(call.data[cd[36] + 36 len ('cd', 36).length], sha3(cd[4] << 240, 6))
    mem[0] = sha3(cd[68], sha3(call.data[cd[36] + 36 len ('cd', 36).length], sha3(cd[4] << 240, 6)))
    stor6[cd[4] << 240][call.data[cd[36] + 36 len ('cd', 36).length]][cd[68]].field_0 = 0
    idx = 0
    while stor6[cd[4] << 240][call.data[cd[36] + 36 len ('cd', 36).length]][cd[68]].length + 31 / 32 > idx:
        stor6[cd[4] << 240][call.data[cd[36] + 36 len ('cd', 36).length]][cd[68]][idx].field_0 = 0
        idx = idx + 1
        continue 
    _834 = mem[ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + 288]
    _835 = mem[ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + 320]
    _841 = mem[64]
    mem[64] = mem[64] + 64
    mem[_841] = 0
    mem[_841 + 32] = 0
    mem[mem[64] + 4] = _835
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPool(uint256 arg1) with:
            gas gas_remaining wei
           args _835
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _881 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _890 = mem[_881]
    require mem[_881] == mem[_881 + 12 len 20]
    if not mem[_881 + 12 len 20]:
        revert with 0, 'Stargate: Pool does not exist'
    mem[mem[64] + 36] = _834
    require ext_code.size(address(_890))
    call address(_890).0x8e9d8c2 with:
         gas gas_remaining wei
        args cd[4] << 240, _834
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _944 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _950 = mem[64]
    require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
    mem[64] = mem[64] + 64
    mem[_950] = mem[_944]
    mem[_950 + 32] = mem[_944 + 32]
    mem[mem[64]] = 0x96aae4af00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = uint16(cd[4])
    mem[mem[64] + 36] = address(cd[100])
    mem[mem[64] + 68] = mem[_950]
    mem[mem[64] + 100] = mem[_950 + 32]
    mem[mem[64] + 132] = 192
    mem[mem[64] + 196] = ('cd', 132).length
    mem[mem[64] + 228] = ('cd', 132)[0]
    mem[mem[64] + 260] = 96
    mem[mem[64] + 292] = cd[(cd[132] + ('cd', 132)[1] + 4)]
    mem[mem[64] + 324 len ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)])] = call.data[cd[132] + ('cd', 132)[1] + 36 len cd[(cd[132] + ('cd', 132)[1] + 4)]], mem[cd[(cd[132] + ('cd', 132)[1] + 4)] + 224 len ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) - cd[(cd[132] + ('cd', 132)[1] + 4)]]
    if ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) > cd[(cd[132] + ('cd', 132)[1] + 4)]:
        mem[mem[64] + cd[(cd[132] + ('cd', 132)[1] + 4)] + 324] = 0
    mem[mem[64] + 164] = ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + 320
    mem[ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + mem[64] + 324] = Mask(8 * -ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + cd[(cd[132] + ('cd', 132)[1] + 4)] + 32, 0, 0), mem[cd[(cd[132] + ('cd', 132)[1] + 4)] + 256 len -cd[(cd[132] + ('cd', 132)[1] + 4)] + ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)])]
    mem[ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + mem[64] + 356 len ceil32(Mask(8 * -ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + cd[(cd[132] + ('cd', 132)[1] + 4)] + 32, 0, 0), mem[cd[(cd[132] + ('cd', 132)[1] + 4)] + 256 len -cd[(cd[132] + ('cd', 132)[1] + 4)] + ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)])])] = mem[ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + 256 len ceil32(Mask(8 * -ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + cd[(cd[132] + ('cd', 132)[1] + 4)] + 32, 0, 0), mem[cd[(cd[132] + ('cd', 132)[1] + 4)] + 256 len -cd[(cd[132] + ('cd', 132)[1] + 4)] + ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)])])]
    if ceil32(Mask(8 * -ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + cd[(cd[132] + ('cd', 132)[1] + 4)] + 32, 0, 0), mem[cd[(cd[132] + ('cd', 132)[1] + 4)] + 256 len -cd[(cd[132] + ('cd', 132)[1] + 4)] + ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)])]) > Mask(8 * -ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + cd[(cd[132] + ('cd', 132)[1] + 4)] + 32, 0, 0), mem[cd[(cd[132] + ('cd', 132)[1] + 4)] + 256 len -cd[(cd[132] + ('cd', 132)[1] + 4)] + ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)])]:
        mem[ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + mem[64] + Mask(8 * -ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + cd[(cd[132] + ('cd', 132)[1] + 4)] + 32, 0, 0), mem[cd[(cd[132] + ('cd', 132)[1] + 4)] + 256 len -cd[(cd[132] + ('cd', 132)[1] + 4)] + ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)])] + 356] = 0
    require ext_code.size(bridgeAddress)
    call bridgeAddress.0x96aae4af with:
       value msg.value wei
         gas gas_remaining wei
        args cd[4] << 240, address(cd[100]), mem[mem[64] + 68 len 64], 192, ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + 320, ('cd', 132).length, ('cd', 132)[0], 96, cd[(cd[132] + ('cd', 132)[1] + 4)], mem[mem[64] + 324 len ceil32(Mask(8 * -ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + cd[(cd[132] + ('cd', 132)[1] + 4)] + 32, 0, 0), mem[cd[(cd[132] + ('cd', 132)[1] + 4)] + 256 len -cd[(cd[132] + ('cd', 132)[1] + 4)] + ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)])]) + ceil32(cd[(cd[132] + ('cd', 132)[1] + 4)]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9fbf10fc(?) payable {
    require calldata.size - 4 >= 288
    require cd[4] == uint16(cd[4])
    require cd[100] == address(cd[100])
    require cd[196] <= test266151307()
    require calldata.size + -cd[196] - 4 >= 96
    require ('cd', 196)[1] <= test266151307()
    require cd[196] + ('cd', 196)[1] + 35 < calldata.size
    require cd[(cd[196] + ('cd', 196)[1] + 4)] <= test266151307()
    require ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + 224 >= 192 and ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + 224 <= test266151307()
    require cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 4)] + 36 <= calldata.size
    mem[224 len cd[(cd[196] + ('cd', 196)[1] + 4)]] = call.data[cd[196] + ('cd', 196)[1] + 36 len cd[(cd[196] + ('cd', 196)[1] + 4)]]
    mem[cd[(cd[196] + ('cd', 196)[1] + 4)] + 224] = 0
    require cd[228] <= test266151307()
    require cd[228] + 35 < calldata.size
    require ('cd', 228).length <= test266151307()
    require cd[228] + ('cd', 228).length + 36 <= calldata.size
    require test266151307() >= cd[260]
    require cd[260] + 35 < calldata.size
    require ('cd', 260).length <= test266151307()
    require cd[260] + ('cd', 260).length + 36 <= calldata.size
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not cd[132]:
        revert with 0, 'Stargate: cannot swap 0'
    if not address(cd[100]):
        revert with 0, 'Stargate: _refundAddress cannot be 0x0'
    mem[ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + 224] = 0
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPool(uint256 arg1) with:
            gas gas_remaining wei
           args cd[36]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Stargate: Pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).convertRate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if not cd[132] / ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x1b7319b6 with:
             gas gas_remaining wei
            args cd[4] << 240, cd[68], msg.sender, 0, cd[164], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        require bool(ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (4 * ceil32(return_data.size)) + 672 <= test266151307())
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (6 * ceil32(return_data.size)) + 804 len 128] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), 0, mem[ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (6 * ceil32(return_data.size)) + 804 len 28]
    else:
        if ext_call.return_data[0] * cd[132] / ext_call.return_data[0] / cd[132] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (2 * ceil32(return_data.size)) + 581 len 31]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x1b7319b6 with:
             gas gas_remaining wei
            args cd[4] << 240, cd[68], msg.sender, ext_call.return_data[0] * cd[132] / ext_call.return_data[0], cd[164], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        require bool(ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (4 * ceil32(return_data.size)) + 672 <= test266151307())
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (6 * ceil32(return_data.size)) + 804 len 128] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), ext_call.return_data[0] * cd[132] / ext_call.return_data[0], mem[ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (6 * ceil32(return_data.size)) + 804 len 28]
    call address(ext_call.return_data[0]).mem[ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (6 * ceil32(return_data.size)) + 804 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (6 * ceil32(return_data.size)) + 808 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'Stargate: TRANSFER_FROM_FAILED'
        if ('cd', 196).length:
            require ('cd', 196).length >= 32
            require ('cd', 196)[0] == bool(('cd', 196)[0])
            if not ('cd', 196)[0]:
                revert with 0, 'Stargate: TRANSFER_FROM_FAILED'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x8e9d8c2 with:
             gas gas_remaining wei
            args cd[4] << 240, cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool(ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (7 * ceil32(return_data.size)) + 868 <= test266151307())
        mem[(2 * ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)])) + (7 * ceil32(return_data.size)) + ceil32(('cd', 228).length) + 1512] = ('cd', 260).length
        mem[(2 * ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)])) + (7 * ceil32(return_data.size)) + ceil32(('cd', 228).length) + 1544 len ('cd', 260).length] = call.data[cd[260] + 36 len ('cd', 260).length]
        mem[(2 * ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)])) + (7 * ceil32(return_data.size)) + ceil32(('cd', 228).length) + ('cd', 260).length + 1544] = 0
        require ext_code.size(bridgeAddress)
        call bridgeAddress.0x51156e73 with:
           value msg.value wei
             gas gas_remaining wei
            args cd[4] << 240, cd[36], cd[68], address(cd[100]), ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], 480, ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + 608, ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + ceil32(('cd', 228).length) + 640, ('cd', 196).length, ('cd', 196)[0], 96, cd[(cd[196] + ('cd', 196)[1] + 4)], Mask(8 * ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]), -(8 * ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)])) + 256, call.data[cd[196] + ('cd', 196)[1] + 36 len cd[(cd[196] + ('cd', 196)[1] + 4)]], mem[cd[(cd[196] + ('cd', 196)[1] + 4)] + 224 len ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) - cd[(cd[196] + ('cd', 196)[1] + 4)]]) << (8 * ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)])) - 256, ('cd', 228).length, call.data[cd[228] + 36 len ('cd', 228).length], 0, mem[(2 * ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)])) + (7 * ceil32(return_data.size)) + ('cd', 228).length + 1544 len ceil32(('cd', 228).length) + ceil32(('cd', 260).length) - ('cd', 228).length]
    else:
        mem[ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (6 * ceil32(return_data.size)) + 836 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Stargate: TRANSFER_FROM_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (6 * ceil32(return_data.size)) + 836] == bool(mem[ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (6 * ceil32(return_data.size)) + 836])
            if not mem[ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (6 * ceil32(return_data.size)) + 836]:
                revert with 0, 'Stargate: TRANSFER_FROM_FAILED'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x8e9d8c2 with:
             gas gas_remaining wei
            args cd[4] << 240, cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool(ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 869 <= test266151307())
        mem[(2 * ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)])) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(('cd', 228).length) + 1513] = ('cd', 260).length
        mem[(2 * ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)])) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(('cd', 228).length) + 1545 len ('cd', 260).length] = call.data[cd[260] + 36 len ('cd', 260).length]
        mem[(2 * ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)])) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(('cd', 228).length) + ('cd', 260).length + 1545] = 0
        require ext_code.size(bridgeAddress)
        call bridgeAddress.0x51156e73 with:
           value msg.value wei
             gas gas_remaining wei
            args cd[4] << 240, cd[36], cd[68], address(cd[100]), ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], 480, ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + 608, ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) + ceil32(('cd', 228).length) + 640, ('cd', 196).length, ('cd', 196)[0], 96, cd[(cd[196] + ('cd', 196)[1] + 4)], Mask(8 * ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]), -(8 * ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)])) + 256, call.data[cd[196] + ('cd', 196)[1] + 36 len cd[(cd[196] + ('cd', 196)[1] + 4)]], mem[cd[(cd[196] + ('cd', 196)[1] + 4)] + 224 len ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)]) - cd[(cd[196] + ('cd', 196)[1] + 4)]]) << (8 * ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)])) - 256, ('cd', 228).length, call.data[cd[228] + 36 len ('cd', 228).length], 0, mem[(2 * ceil32(cd[(cd[196] + ('cd', 196)[1] + 4)])) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ('cd', 228).length + 1545 len ceil32(('cd', 228).length) + ceil32(('cd', 260).length) - ('cd', 228).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}



}
