contract main {




// =====================  Runtime code  =====================


#
#  - sub_23e6f804(?)
#
const MAX_SOLD = 2 * 10^13


address owner;
uint256 PRICE;
uint256 sub_943ab261;
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

function sub_943ab261(?) payable {
    return sub_943ab261
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
    sub_943ab261 = arg1
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

function sub_423e488f(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require ext_code.size(stor9)
    staticcall stor9.0x313ce567 with:
            gas gas_remaining wei
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(arg2.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _5 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    require Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg1 and 1 > -1 / arg1:
            revert with 0, 17
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 164] = this.address
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 196] = arg1
        require ext_code.size(stor9)
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 0, 17
            if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                revert with 0, 17
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 164] = this.address
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 196] = arg1 * 10^uint8(_5)
            require ext_code.size(stor9)
            call stor9.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1 * 10^uint8(_5)
        else:
            if var34005 > 1:
                s = var34001
                t = var34002
                u = var34005
                while s <= -1 / s:
                    if not bool(u):
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = t
                            u = uint255(u) * 0.5
                            continue 
                        if t > -1 / s * s:
                            revert with 0, 17
                        if arg1 and s * s * t > -1 / arg1:
                            revert with 0, 17
                        mem[ceil32(arg2.length) + ceil32(return_data.size) + 132] = msg.sender
                        mem[ceil32(arg2.length) + ceil32(return_data.size) + 164] = this.address
                        mem[ceil32(arg2.length) + ceil32(return_data.size) + 196] = arg1 * s * s * t
                        require ext_code.size(stor9)
                        call stor9.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1 * s * s * t
                        mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if bool(ext_call.return_data[0]) != 1:
                            revert with 0, 'TX Failed'
                        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 128] = 0x9021973200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 132] = msg.sender
                        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 164] = 96
                        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 228] = arg2.length
                        idx = 0
                        while idx < arg2.length:
                            mem[idx + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 260] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(arg2.length) <= arg2.length:
                            mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 196] = 10^18 * arg1
                            require ext_code.size(stor10)
                            call stor10.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=arg2.length, data=mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 260 len ceil32(arg2.length)]), 10^18 * arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 128
                            require return_data.size >= 96
                            require mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 == Mask(160, 32, msg.sender) >> 32
                            require uint32(msg.sender), 0 <= test266151307()
                            require ceil32(arg2.length) + (2 * ceil32(return_data.size)) + return_data.size + 128 > ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 159
                            _371 = mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128]
                            if mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128] > test266151307():
                                revert with 0, 65
                            if ceil32(mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128]) + 32 < 0 or ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128]) + 160 > test266151307():
                                revert with 0, 65
                            mem[ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 128] = mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128]
                            require uint32(msg.sender), 0 + _371 + 32 <= return_data.size
                            idx = 0
                            while idx < _371:
                                mem[idx + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 160] = mem[idx + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 160]
                                idx = idx + 32
                                continue 
                        else:
                            mem[arg2.length + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 260] = 0
                            mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 196] = 10^18 * arg1
                            require ext_code.size(stor10)
                            call stor10.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=arg2.length, data=mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 260 len ceil32(arg2.length)]), 10^18 * arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 128
                            require return_data.size >= 96
                            require mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 == Mask(160, 32, msg.sender) >> 32
                            require uint32(msg.sender), 0 <= test266151307()
                            require ceil32(arg2.length) + (2 * ceil32(return_data.size)) + return_data.size + 128 > ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 159
                            _372 = mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128]
                            if mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128] > test266151307():
                                revert with 0, 65
                            if ceil32(mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128]) + 32 < 0 or ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128]) + 160 > test266151307():
                                revert with 0, 65
                            mem[ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 128] = mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128]
                            require uint32(msg.sender), 0 + _372 + 32 <= return_data.size
                            idx = 0
                            while idx < _372:
                                mem[idx + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 160] = mem[idx + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 160]
                                idx = idx + 32
                                continue 
                    else:
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = s * t
                            u = uint255(u) * 0.5
                            continue 
                        if s * t > -1 / s * s:
                            revert with 0, 17
                        if arg1 and s * s * s * t > -1 / arg1:
                            revert with 0, 17
                        mem[ceil32(arg2.length) + ceil32(return_data.size) + 132] = msg.sender
                        mem[ceil32(arg2.length) + ceil32(return_data.size) + 164] = this.address
                        mem[ceil32(arg2.length) + ceil32(return_data.size) + 196] = arg1 * s * s * s * t
                        require ext_code.size(stor9)
                        call stor9.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1 * s * s * s * t
                        mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if bool(ext_call.return_data[0]) != 1:
                            revert with 0, 'TX Failed'
                        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 128] = 0x9021973200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 132] = msg.sender
                        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 164] = 96
                        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 228] = arg2.length
                        idx = 0
                        while idx < arg2.length:
                            mem[idx + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 260] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(arg2.length) <= arg2.length:
                            mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 196] = 10^18 * arg1
                            require ext_code.size(stor10)
                            call stor10.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=arg2.length, data=mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 260 len ceil32(arg2.length)]), 10^18 * arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 128
                            require return_data.size >= 96
                            require mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 == Mask(160, 32, msg.sender) >> 32
                            require uint32(msg.sender), 0 <= test266151307()
                            require ceil32(arg2.length) + (2 * ceil32(return_data.size)) + return_data.size + 128 > ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 159
                            _373 = mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128]
                            if mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128] > test266151307():
                                revert with 0, 65
                            if ceil32(mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128]) + 32 < 0 or ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128]) + 160 > test266151307():
                                revert with 0, 65
                            mem[ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 128] = mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128]
                            require uint32(msg.sender), 0 + _373 + 32 <= return_data.size
                            idx = 0
                            while idx < _373:
                                mem[idx + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 160] = mem[idx + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 160]
                                idx = idx + 32
                                continue 
                        else:
                            mem[arg2.length + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 260] = 0
                            mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 196] = 10^18 * arg1
                            require ext_code.size(stor10)
                            call stor10.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=arg2.length, data=mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 260 len ceil32(arg2.length)]), 10^18 * arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 128
                            require return_data.size >= 96
                            require mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 == Mask(160, 32, msg.sender) >> 32
                            require uint32(msg.sender), 0 <= test266151307()
                            require ceil32(arg2.length) + (2 * ceil32(return_data.size)) + return_data.size + 128 > ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 159
                            _374 = mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128]
                            if mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128] > test266151307():
                                revert with 0, 65
                            if ceil32(mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128]) + 32 < 0 or ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128]) + 160 > test266151307():
                                revert with 0, 65
                            mem[ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 128] = mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128]
                            require uint32(msg.sender), 0 + _374 + 32 <= return_data.size
                            idx = 0
                            while idx < _374:
                                mem[idx + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 160] = mem[idx + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 160]
                                idx = idx + 32
                                continue 
                    if invested[msg.sender] > !arg1:
                        revert with 0, 17
                    invested[msg.sender] += arg1
                    if sold > !arg1:
                        revert with 0, 17
                    sold += arg1
                revert with 0, 17
            if var34002 > -1 / var34001:
                revert with 0, 17
            if arg1 and var34001 * var34002 > -1 / arg1:
                revert with 0, 17
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 164] = this.address
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 196] = arg1 * var34001 * var34002
            require ext_code.size(stor9)
            call stor9.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1 * var34001 * var34002
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'TX Failed'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 128] = 0x9021973200000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 164] = 96
    mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 228] = arg2.length
    mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 260 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 260] = 0
    mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 196] = 10^18 * arg1
    require ext_code.size(stor10)
    call stor10.0x90219732 with:
         gas gas_remaining wei
        args msg.sender, Array(len=arg2.length, data=arg2[all]), 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 128
    require return_data.size >= 96
    require mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 == Mask(160, 32, msg.sender) >> 32
    require uint32(msg.sender), 0 <= test266151307()
    require ceil32(arg2.length) + (2 * ceil32(return_data.size)) + return_data.size + 128 > ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 159
    if mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128] > test266151307():
        revert with 0, 65
    if ceil32(mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128]) + 32 < 0 or ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128]) + 160 > test266151307():
        revert with 0, 65
    require uint32(msg.sender), 0 + mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + uint32(msg.sender), 0 + 128] + 32 <= return_data.size
    if invested[msg.sender] > !arg1:
        revert with 0, 17
    invested[msg.sender] += arg1
    if sold > !arg1:
        revert with 0, 17
    sold += arg1
}



}
