contract main {




// =====================  Runtime code  =====================


#
#  - sub_2084976b(?)
#  - sub_23e6f804(?)
#
const MAX_SOLD = 2 * 10^13


address owner;
uint256 PRICE;
uint256 sub_4e30b0ac;
uint256 sub_7ff6846d;
uint256 MIN_PRESALE_PER_ACCOUNT;
uint256 MAX_PRESALE_PER_ACCOUNT;
uint256 sold;
address devAddress;
address sub_8ab3cdccAddress;
address stor9;
address stor10;
array of uint256 stor11;
uint8 saleEnabled;
mapping of uint256 invested;
mapping of uint8 stor14;

function sold() payable {
    return sold
}

function MAX_PRESALE_PER_ACCOUNT() payable {
    return MAX_PRESALE_PER_ACCOUNT
}

function sub_4e30b0ac(?) payable {
    return sub_4e30b0ac
}

function invested(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return invested[arg1]
}

function saleEnabled() payable {
    return bool(saleEnabled)
}

function sub_7ff6846d(?) payable {
    return sub_7ff6846d
}

function sub_8ab3cdcc(?) payable {
    return sub_8ab3cdccAddress
}

function PRICE() payable {
    return PRICE
}

function owner() payable {
    return owner
}

function dev() payable {
    return devAddress
}

function MIN_PRESALE_PER_ACCOUNT() payable {
    return MIN_PRESALE_PER_ACCOUNT
}

function blacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[arg1])
}

function _fallback() payable {
    revert
}

function sub_c1a7da50(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    saleEnabled = 0
}

function setSaleEnabled() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    saleEnabled = 1
}

function sub_eea52d38(?) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, '!dev'
    PRICE = arg1
}

function sub_768a60d8(?) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, '!dev'
    sub_4e30b0ac = arg1
}

function sub_9f237537(?) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, '!dev'
    sub_7ff6846d = arg1
}

function sub_4c1303ad(?) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, '!dev'
    MAX_PRESALE_PER_ACCOUNT = arg1
}

function sub_f506b859(?) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, '!dev'
    MIN_PRESALE_PER_ACCOUNT = arg1
}

function setSold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sold = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, '!dev'
    sub_8ab3cdccAddress = arg1
}

function blacklistBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = 1
    return 1
}

function amountBuyable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not saleEnabled:
        if 0 < invested[address(arg1)]:
            revert with 0, 17
        return -invested[address(arg1)]
    if MAX_PRESALE_PER_ACCOUNT < invested[address(arg1)]:
        revert with 0, 17
    return (MAX_PRESALE_PER_ACCOUNT - invested[address(arg1)])
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isDev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 >= stor11.length:
        revert with 0, 50
    if address(stor11.field_0) != arg1:
        if 1 >= stor11.length:
            revert with 0, 50
        if address(stor11.field_256) != arg1:
            if 2 >= stor11.length:
                revert with 0, 50
            if address(stor11.field_512) != arg1:
                return 0
    return 1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, '!dev'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args devAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transferERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function blacklistBuyers(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while arg1.length > idx:
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 14
        stor14[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return arg1.length
}

function create(string arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    mem[ceil32(arg1.length) + 128] = 0x9021973200000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = msg.sender
    mem[ceil32(arg1.length) + 164] = 96
    mem[ceil32(arg1.length) + 228] = arg1.length
    mem[ceil32(arg1.length) + 260 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[arg1.length + ceil32(arg1.length) + 260] = 0
    mem[ceil32(arg1.length) + 196] = 10^18 * arg2
    require ext_code.size(stor10)
    call stor10 with:
         gas gas_remaining wei
        args msg.sender, Array(len=arg1.length, data=arg1[all]), 10^18 * arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 96
    require 0, Mask(224, 32, msg.sender) >> 32 == Mask(160, 32, msg.sender) >> 32
    require uint32(msg.sender), 0 <= test266151307()
    require ceil32(arg1.length) + return_data.size + 128 > ceil32(arg1.length) + uint32(msg.sender), 0 + 159
    if mem[ceil32(arg1.length) + uint32(msg.sender), 0 + 128] > test266151307():
        revert with 0, 65
    if ceil32(mem[ceil32(arg1.length) + uint32(msg.sender), 0 + 128]) + 32 < 0 or ceil32(arg1.length) + ceil32(return_data.size) + ceil32(mem[ceil32(arg1.length) + uint32(msg.sender), 0 + 128]) + 160 > test266151307():
        revert with 0, 65
    require uint32(msg.sender), 0 + mem[ceil32(arg1.length) + uint32(msg.sender), 0 + 128] + 32 <= return_data.size
}

function sub_676e30d7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    mem[ceil32(arg1.length) + 164] = msg.sender
    mem[ceil32(arg1.length) + 196] = this.address
    mem[ceil32(arg1.length) + 228] = 10^18 * arg2
    mem[ceil32(arg1.length) + 128] = 100
    mem[ceil32(arg1.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(arg1.length) + 160 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(arg1.length) + 260] = 32
    mem[ceil32(arg1.length) + 292] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor9):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(stor9):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(arg1.length) + 324 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + 324] = 0
    call stor9.mem[ceil32(arg1.length) + 324 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + 328 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
    if not return_data.size:
        if not ext_call.success:
            if arg1.length:
                revert with arg1[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1.length:
            require arg1.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        mem[ceil32(arg1.length) + 324] = 0x9021973200000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + 328] = msg.sender
        mem[ceil32(arg1.length) + 360] = 96
        mem[ceil32(arg1.length) + 424] = arg1.length
        mem[ceil32(arg1.length) + 456 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if ceil32(arg1.length) > arg1.length:
            mem[arg1.length + ceil32(arg1.length) + 456] = 0
        mem[ceil32(arg1.length) + 392] = 10^18 * arg2
        require ext_code.size(stor10)
        call stor10.0x90219732 with:
             gas gas_remaining wei
            args msg.sender, Array(len=arg1.length, data=arg1[all]), 10^18 * arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg1.length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg1.length) + ceil32(return_data.size) + 324
        require return_data.size >= 96
        require mem[ceil32(arg1.length) + 324 len 4], Mask(224, 32, msg.sender) >> 32 == Mask(160, 32, msg.sender) >> 32
        require uint32(msg.sender), 0 <= test266151307()
        require ceil32(arg1.length) + return_data.size + 324 > ceil32(arg1.length) + uint32(msg.sender), 0 + 355
        if mem[ceil32(arg1.length) + uint32(msg.sender), 0 + 324] > test266151307():
            revert with 0, 65
        if ceil32(mem[ceil32(arg1.length) + uint32(msg.sender), 0 + 324]) + 32 < 0 or ceil32(arg1.length) + ceil32(return_data.size) + ceil32(mem[ceil32(arg1.length) + uint32(msg.sender), 0 + 324]) + 356 > test266151307():
            revert with 0, 65
        require uint32(msg.sender), 0 + mem[ceil32(arg1.length) + uint32(msg.sender), 0 + 324] + 32 <= return_data.size
    else:
        mem[ceil32(arg1.length) + 324] = return_data.size
        mem[ceil32(arg1.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg1.length) + 356] == bool(mem[ceil32(arg1.length) + 356])
            if not mem[ceil32(arg1.length) + 356]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 325] = 0x9021973200000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 329] = msg.sender
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 361] = 96
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 425] = arg1.length
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 457 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if ceil32(arg1.length) > arg1.length:
            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 457] = 0
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 393] = 10^18 * arg2
        require ext_code.size(stor10)
        call stor10.0x90219732 with:
             gas gas_remaining wei
            args msg.sender, Array(len=arg1.length, data=arg1[all]), 10^18 * arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 325
        require return_data.size >= 96
        require mem[ceil32(arg1.length) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, msg.sender) >> 32 == Mask(160, 32, msg.sender) >> 32
        require uint32(msg.sender), 0 <= test266151307()
        require ceil32(arg1.length) + ceil32(return_data.size) + return_data.size + 325 > ceil32(arg1.length) + ceil32(return_data.size) + uint32(msg.sender), 0 + 356
        if mem[ceil32(arg1.length) + ceil32(return_data.size) + uint32(msg.sender), 0 + 325] > test266151307():
            revert with 0, 65
        if ceil32(mem[ceil32(arg1.length) + ceil32(return_data.size) + uint32(msg.sender), 0 + 325]) + 32 < 0 or ceil32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(mem[ceil32(arg1.length) + ceil32(return_data.size) + uint32(msg.sender), 0 + 325]) + 357 > test266151307():
            revert with 0, 65
        require uint32(msg.sender), 0 + mem[ceil32(arg1.length) + ceil32(return_data.size) + uint32(msg.sender), 0 + 325] + 32 <= return_data.size
    if invested[msg.sender] > !arg2:
        revert with 0, 17
    invested[msg.sender] += arg2
    if sold > !arg2:
        revert with 0, 17
    sold += arg2
}



}
