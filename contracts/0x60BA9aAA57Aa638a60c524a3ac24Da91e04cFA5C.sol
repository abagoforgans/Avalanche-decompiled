contract main {




// =====================  Runtime code  =====================


address owner;
address MIMAddress;
uint256 sub_928f5f43;
uint256 maxPublicSale;
uint8 stor4;
uint8 stor4; offset 8
uint256 stor4; offset 8
uint256 sub_bbac86ed;
uint256 sub_848628bf;
uint256 price;
uint256 sold;
uint256 sub_bc6bacb8;
uint8 stor10; offset 160
uint128 stor10; offset 160
address snowAddress;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint256 invested;
mapping of uint8 stor14;

function sold() payable {
    return sold
}

function snow() payable {
    return snowAddress
}

function presaleActive() payable {
    return bool(uint8(stor4.field_0))
}

function invested(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return invested[arg1]
}

function sub_6ccd5e50(?) payable {
    return bool(uint8(stor10.field_160))
}

function sub_848628bf(?) payable {
    return sub_848628bf
}

function owner() payable {
    return owner
}

function sub_928f5f43(?) payable {
    return sub_928f5f43
}

function price() payable {
    return price
}

function sub_bbac86ed(?) payable {
    return sub_bbac86ed
}

function sub_bc6bacb8(?) payable {
    return sub_bc6bacb8
}

function maxPublicSale() payable {
    return maxPublicSale
}

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[arg1])
}

function whitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function MIM() payable {
    return MIMAddress
}

function blacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function sub_ec37ad64(?) payable {
    return bool(uint8(stor4.field_8))
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function togglePresale(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor4.field_0) = uint8(arg1)
}

function sub_2100e197(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor11[address(arg1)]:
        return sub_928f5f43
    if not uint8(stor4.field_8):
        return 0
    return maxPublicSale
}

function togglePublicSale(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor4.field_8) = Mask(248, 0, arg1)
}

function sub_585c02b3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    snowAddress = address(arg1)
    sub_bc6bacb8 = arg2
    Mask(96, 0, stor10.field_160) = 1
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

function amountBuyable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor11[address(arg1)]:
        if sub_928f5f43 < invested[address(arg1)]:
            revert with 'NH{q', 17
        return (sub_928f5f43 - invested[address(arg1)])
    if not uint8(stor4.field_8):
        if 0 < invested[address(arg1)]:
            revert with 'NH{q', 17
        return -invested[address(arg1)]
    if maxPublicSale < invested[address(arg1)]:
        revert with 'NH{q', 17
    return (maxPublicSale - invested[address(arg1)])
}

function sub_0b634cb0(?) payable {
    if not uint8(stor10.field_160):
        revert with 0, 'cannot claim yet'
    if stor14[address(msg.sender)]:
        revert with 0, 'already claimed'
    if stor12[address(msg.sender)]:
        revert with 0, 'blacklisted'
    if invested[address(msg.sender)] and sub_bc6bacb8 > -1 / invested[address(msg.sender)]:
        revert with 'NH{q', 17
    require ext_code.size(snowAddress)
    call snowAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, invested[address(msg.sender)] * sub_bc6bacb8 / 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor14[address(msg.sender)] = 1
}

function removeFromBlacklist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        if not stor12[mem[(32 * idx) + 140 len 20]]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        stor12[mem[(32 * idx) + 140 len 20]] = 0
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_714f8370(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor4.field_0):
        revert with 0, 'presale has ended'
    if stor12[address(msg.sender)]:
        revert with 0, 'blacklisted'
    if arg1 > -sold - 1:
        revert with 'NH{q', 17
    require arg1 + sold <= sub_848628bf
    if stor11[address(msg.sender)]:
        if arg1 > -invested[address(msg.sender)] - 1:
            revert with 'NH{q', 17
        if arg1 + invested[address(msg.sender)] > sub_928f5f43:
            revert with 0, 'exceeds max contribution'
    else:
        if uint8(stor4.field_8):
            if arg1 > -invested[address(msg.sender)] - 1:
                revert with 'NH{q', 17
            if arg1 + invested[address(msg.sender)] > maxPublicSale:
                revert with 0, 'exceeds max contribution'
    if arg1 and price > -1 / arg1:
        revert with 'NH{q', 17
    require ext_code.size(MIMAddress)
    call MIMAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1 * price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if invested[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    invested[address(msg.sender)] += arg1
    if sold > -arg1 - 1:
        revert with 'NH{q', 17
    sold += arg1
}

function removeFromWhitelist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        if not stor11[mem[(32 * idx) + 140 len 20]]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        stor11[mem[(32 * idx) + 140 len 20]] = 0
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if sub_bbac86ed < s:
        revert with 'NH{q', 17
    sub_bbac86ed -= s
    return s
}

function sub_3fb168c4(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not uint8(stor4.field_0)
    require ext_code.size(MIMAddress)
    staticcall MIMAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(MIMAddress)
        staticcall MIMAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(MIMAddress)
        call MIMAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function addToWhitelist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        if stor11[mem[(32 * idx) + 140 len 20]]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        stor11[mem[(32 * idx) + 140 len 20]] = 1
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if sub_bbac86ed > -s - 1:
        revert with 'NH{q', 17
    sub_bbac86ed += s
    require sub_bbac86ed <= 500
    return s
}

function addToBlacklist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if not stor12[mem[(32 * idx) + 140 len 20]]:
            stor12[mem[(32 * idx) + 140 len 20]] = 1
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        if not stor11[mem[(32 * idx) + 140 len 20]]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        stor11[mem[(32 * idx) + 140 len 20]] = 0
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if sub_bbac86ed < s:
        revert with 'NH{q', 17
    sub_bbac86ed -= s
    return s
}



}
