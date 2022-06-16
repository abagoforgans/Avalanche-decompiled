contract main {




// =====================  Runtime code  =====================


#
#  - sub_d9cc69e3(?)
#  - sub_f88e4971(?)
#
address owner;
address sub_b29c662aAddress;
address tokenContractAddress;
array of uint256 sub_60617903;
array of uint256 sub_d177d79a;
array of uint256 sub_f8b4d92d;
array of uint256 sub_b9e0b017;
array of uint256 sub_7b2f3194;
array of uint256 sub_347cab75;
array of uint256 sub_5c444cdc;
array of uint256 sub_eac0926f;
mapping of uint256 sub_4bed279d;
mapping of address sub_c43b084c;

function sub_347cab75(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_347cab75.length
    return sub_347cab75[arg1]
}

function sub_4bed279d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_4bed279d[arg1]
}

function tokenContract() {
    return tokenContractAddress
}

function sub_5c444cdc(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_5c444cdc.length
    return sub_5c444cdc[arg1]
}

function sub_60617903(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_60617903.length
    return sub_60617903[arg1]
}

function sub_7b2f3194(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_7b2f3194.length
    return sub_7b2f3194[arg1]
}

function owner() {
    return owner
}

function sub_b29c662a(?) {
    return sub_b29c662aAddress
}

function sub_b9e0b017(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_b9e0b017.length
    return sub_b9e0b017[arg1]
}

function sub_c43b084c(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == uint8(arg2)
    return sub_c43b084c[arg1][arg2]
}

function sub_d177d79a(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_d177d79a.length
    return sub_d177d79a[arg1]
}

function sub_eac0926f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_eac0926f.length
    return sub_eac0926f[arg1]
}

function sub_f8b4d92d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_f8b4d92d.length
    return sub_f8b4d92d[arg1]
}

function sub_b5cc4539(?) payable {
  stop
}

function _fallback() payable {
    revert
}

function getSecond(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint8(arg1 % 60)
}

function getMinute(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint8(arg1 / 60 % 60)
}

function getHour(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint8(arg1 / 60 / 60 % 24)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function random(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number < 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    return (block.hash(block.number - 1) % arg1)
}

function isLeapYear(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1 % 4:
        if uint16(arg1 % 100):
            return 1
        if not uint16(arg1 % 400):
            return 1
        else:
            return 0
    else:
        return 0
}

function sub_d1e1a973(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint16(arg1)
    require arg2 == uint8(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c43b084c[arg1 << 240][arg2 << 248] = address(arg3)
}

function sub_d8ff3382(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function leapYearsBefore(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 < 1:
        revert with 'NH{q', 17
    if arg1 - 1 / 4 < arg1 - 1 / 100:
        revert with 'NH{q', 17
    if (arg1 - 1 / 4) - (arg1 - 1 / 100) > -(arg1 - 1 / 400) - 1:
        revert with 'NH{q', 17
    return ((arg1 - 1 / 4) - (arg1 - 1 / 100) + (arg1 - 1 / 400))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getDaysInMonth(uint8 arg1, uint16 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == 1:
        return 31
    if arg1 == 3:
        return 31
    if arg1 == 5:
        return 31
    if arg1 == 7:
        return 31
    if arg1 == 8:
        return 31
    if arg1 == 10:
        return 31
    if arg1 == 12:
        return 31
    if arg1 == 4:
        return 30
    if arg1 == 6:
        return 30
    if arg1 == 9:
        return 30
    if arg1 == 11:
        return 30
    if not arg2 % 4:
        if uint16(arg2 % 100):
            return 29
        if not uint16(arg2 % 400):
            return 29
    return 28
}

function sub_11c4682e(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        sub_5c444cdc.length++
        mem[0] = 9
        sub_5c444cdc[sub_5c444cdc.length] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_20ef1f9f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        sub_b9e0b017.length++
        mem[0] = 6
        sub_b9e0b017[sub_b9e0b017.length] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_219d6635(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        sub_7b2f3194.length++
        mem[0] = 7
        sub_7b2f3194[sub_7b2f3194.length] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_2a0e3f6d(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        sub_347cab75.length++
        mem[0] = 8
        sub_347cab75[sub_347cab75.length] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_37366ae3(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        sub_60617903.length++
        mem[0] = 3
        sub_60617903[sub_60617903.length] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_c07f2aaf(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        sub_f8b4d92d.length++
        mem[0] = 5
        sub_f8b4d92d[sub_f8b4d92d.length] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_d25bd309(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        sub_d177d79a.length++
        mem[0] = 4
        sub_d177d79a[sub_d177d79a.length] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_90e23589(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        sub_eac0926f.length++
        mem[0] = 10
        sub_eac0926f[sub_eac0926f.length] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_e82e55cd(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall sub_b29c662aAddress.deposits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This token has not been staked'
    staticcall sub_b29c662aAddress.checkpoints(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= sub_4bed279d[arg1]:
        if block.timestamp < sub_4bed279d[arg1]:
            revert with 'NH{q', 17
        return (block.timestamp - sub_4bed279d[arg1] / 24 * 3600)
    if block.timestamp < ext_call.return_data[0]:
        revert with 'NH{q', 17
    return (block.timestamp - ext_call.return_data[0] / 24 * 3600)
}

function redeem(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall sub_b29c662aAddress.deposits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You are not the owner of this token'
    staticcall sub_b29c662aAddress.deposits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This token has not been staked'
    staticcall sub_b29c662aAddress.checkpoints(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= sub_4bed279d[arg1]:
        if block.timestamp < sub_4bed279d[arg1]:
            revert with 'NH{q', 17
        if block.timestamp - sub_4bed279d[arg1] / 24 * 3600 and 10^18 > -1 / block.timestamp - sub_4bed279d[arg1] / 24 * 3600:
            revert with 'NH{q', 17
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 10^18 * block.timestamp - sub_4bed279d[arg1] / 24 * 3600
    else:
        if block.timestamp < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if block.timestamp - ext_call.return_data[0] / 24 * 3600 and 10^18 > -1 / block.timestamp - ext_call.return_data[0] / 24 * 3600:
            revert with 'NH{q', 17
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 10^18 * block.timestamp - ext_call.return_data[0] / 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_4bed279d[arg1] = block.timestamp
}

function getYear(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 1970 > -(arg1 / 8760 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    if uint16((arg1 / 8760 * 24 * 3600) + 1970) < 1:
        revert with 'NH{q', 17
    if uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4 < uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100:
        revert with 'NH{q', 17
    if (uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) - (uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) > -(uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) - 1:
        revert with 'NH{q', 17
    if (uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) - (uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) + (uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) < 477:
        revert with 'NH{q', 17
    if (uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) + -(uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) + (uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) - 477 > 0x87d206500cf71c7a443cd6c7ebe38ec0b59488f085555dd275ba5624c7:
        revert with 'NH{q', 17
    if 0 > (-31622400 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) + (8784 * 24 * 3600 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) + (-31622400 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) + 15083884799:
        revert with 'NH{q', 17
    if uint16((arg1 / 8760 * 24 * 3600) + 1970) < 1970:
        revert with 'NH{q', 17
    if uint16(uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1970) < (uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) + -(uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) + (uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) - 477:
        revert with 'NH{q', 17
    if uint16(uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1970) + -(uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) + (uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) + -(uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) + 477 > 0x883148f5cb1270b85273b667ae1cfdf5d70ac5a1ecccd54fe15c297df3:
        revert with 'NH{q', 17
    if (8784 * 24 * 3600 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) + (-31622400 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) + (8784 * 24 * 3600 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) - (4189968 * 24 * 3600) > (-31536000 * uint16(uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1970)) + (8760 * 24 * 3600 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) + (-31536000 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) + (8760 * 24 * 3600 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) - 15042672001:
        revert with 'NH{q', 17
    s = (arg1 / 8760 * 24 * 3600) + 1970
    idx = (24 * 3600 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) + (-86400 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) + (24 * 3600 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) + (8760 * 24 * 3600 * uint16(uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1970)) - (11448 * 24 * 3600)
    while idx > arg1:
        if uint16(s) < 1:
            revert with 'NH{q', 17
        if not uint16(s) - 1 % 4:
            if uint16(uint16(uint16(s) - 1) % 100):
                if idx < 8784 * 24 * 3600:
                    revert with 'NH{q', 17
                if uint16(s) < 1:
                    revert with 'NH{q', 17
                s = uint16(s) - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
            if not uint16(uint16(uint16(s) - 1) % 400):
                if idx < 8784 * 24 * 3600:
                    revert with 'NH{q', 17
                if uint16(s) < 1:
                    revert with 'NH{q', 17
                s = uint16(s) - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
        if idx < 8760 * 24 * 3600:
            revert with 'NH{q', 17
        if uint16(s) < 1:
            revert with 'NH{q', 17
        s = uint16(s) - 1
        idx = idx - (8760 * 24 * 3600)
        continue 
    return uint16(s)
}

function sub_c373e0be(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 < 0x800000000000000000000000000000000000000000000000000000000000000e:
        revert with 'NH{q', 17
    if arg1 >= 0 and 4900 > -arg1 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if arg1 < 0 and 4900 < -arg1 - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if arg1 + 4900 >= 0 and arg2 - 14 / 12 > -arg1 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffecdb:
        revert with 'NH{q', 17
    if arg1 + 4900 < 0 and arg2 - 14 / 12 < -arg1 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffecdc:
        revert with 'NH{q', 17
    if bool(arg1 + (arg2 - 14 / 12) + 4900 / 100 > 0) and 3 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1 + (arg2 - 14 / 12) + 4900 / 100:
        revert with 'NH{q', 17
    if bool(arg1 + (arg2 - 14 / 12) + 4900 / 100 < 0) and arg1 + (arg2 - 14 / 12) + 4900 / 100 < 0xd555555555555555555555555555555555555555555555555555555555555556:
        revert with 'NH{q', 17
    if arg2 < 0x800000000000000000000000000000000000000000000000000000000000000e:
        revert with 'NH{q', 17
    if bool(arg2 - 14 / 12 > 0) and arg2 - 14 / 12 > 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
        revert with 'NH{q', 17
    if bool(arg2 - 14 / 12 < 0) and arg2 - 14 / 12 < 0xf555555555555555555555555555555555555555555555555555555555555556:
        revert with 'NH{q', 17
    if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000002:
        revert with 'NH{q', 17
    if 12 * arg2 - 14 / 12 >= 0 and arg2 - 2 < (12 * arg2 - 14 / 12) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if 12 * arg2 - 14 / 12 < 0 and arg2 - 2 > (12 * arg2 - 14 / 12) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if bool(arg2 + (-12 * arg2 - 14 / 12) - 2 > 0) and 367 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg2 + (-12 * arg2 - 14 / 12) - 2:
        revert with 'NH{q', 17
    if bool(arg2 + (-12 * arg2 - 14 / 12) - 2 < 0) and arg2 + (-12 * arg2 - 14 / 12) - 2 < 0xffa6b6c1eb12d573186a06f9b8d9a287530217b7747d8eff4d6d83d625aae631:
        revert with 'NH{q', 17
    if arg2 < 0x800000000000000000000000000000000000000000000000000000000000000e:
        revert with 'NH{q', 17
    if arg1 >= 0 and 4800 > -arg1 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if arg1 < 0 and 4800 < -arg1 - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if arg1 + 4800 >= 0 and arg2 - 14 / 12 > -arg1 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffed3f:
        revert with 'NH{q', 17
    if arg1 + 4800 < 0 and arg2 - 14 / 12 < -arg1 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffed40:
        revert with 'NH{q', 17
    if bool(arg1 + (arg2 - 14 / 12) + 4800 > 0) and 1461 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1 + (arg2 - 14 / 12) + 4800:
        revert with 'NH{q', 17
    if bool(arg1 + (arg2 - 14 / 12) + 4800 < 0) and arg1 + (arg2 - 14 / 12) + 4800 < 0xffe9924f8d0dd7b2e6f174df9576f9de01c091c8faeb2605f522de8852b47aa8:
        revert with 'NH{q', 17
    if False and (1461 * arg1) + (1461 * arg2 - 14 / 12) + (1948 * 3600) / 4 > 0x8000000000000000000000000000000000000000000000000000000000007d49:
        revert with 'NH{q', 17
    if bool((1461 * arg1) + (1461 * arg2 - 14 / 12) + (1948 * 3600) / 4 < 0x8000000000000000000000000000000000000000000000000000000000007d4a):
        revert with 'NH{q', 17
    if ((1461 * arg1) + (1461 * arg2 - 14 / 12) + (1948 * 3600) / 4) - 32074 >= 0 and (367 * arg2) + (-4404 * arg2 - 14 / 12) - 734 / 12 > -((1461 * arg1) + (1461 * arg2 - 14 / 12) + (1948 * 3600) / 4) - 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffff82b7:
        revert with 'NH{q', 17
    if ((1461 * arg1) + (1461 * arg2 - 14 / 12) + (1948 * 3600) / 4) - 32074 < 0 and (367 * arg2) + (-4404 * arg2 - 14 / 12) - 734 / 12 < -((1461 * arg1) + (1461 * arg2 - 14 / 12) + (1948 * 3600) / 4) - 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffff82b6:
        revert with 'NH{q', 17
    if 3 * arg1 + (arg2 - 14 / 12) + 4900 / 100 / 4 >= 0 and ((1461 * arg1) + (1461 * arg2 - 14 / 12) + (1948 * 3600) / 4) + ((367 * arg2) + (-4404 * arg2 - 14 / 12) - 734 / 12) - 32074 < (3 * arg1 + (arg2 - 14 / 12) + 4900 / 100 / 4) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if 3 * arg1 + (arg2 - 14 / 12) + 4900 / 100 / 4 < 0 and ((1461 * arg1) + (1461 * arg2 - 14 / 12) + (1948 * 3600) / 4) + ((367 * arg2) + (-4404 * arg2 - 14 / 12) - 734 / 12) - 32074 > (3 * arg1 + (arg2 - 14 / 12) + 4900 / 100 / 4) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if ((1461 * arg1) + (1461 * arg2 - 14 / 12) + (1948 * 3600) / 4) + ((367 * arg2) + (-4404 * arg2 - 14 / 12) - 734 / 12) + -(3 * arg1 + (arg2 - 14 / 12) + 4900 / 100 / 4) - 32074 < 0x8000000000000000000000000000000000000000000000000000000000253d8c:
        revert with 'NH{q', 17
    if ((1461 * arg1) + (1461 * arg2 - 14 / 12) + (1948 * 3600) / 4) + ((367 * arg2) + (-4404 * arg2 - 14 / 12) - 734 / 12) + -(3 * arg1 + (arg2 - 14 / 12) + 4900 / 100 / 4) - 2472662 and 24 * 3600 > -1 / ((1461 * arg1) + (1461 * arg2 - 14 / 12) + (1948 * 3600) / 4) + ((367 * arg2) + (-4404 * arg2 - 14 / 12) - 734 / 12) + -(3 * arg1 + (arg2 - 14 / 12) + 4900 / 100 / 4) - 2472662:
        revert with 'NH{q', 17
    return ((24 * 3600 * (1461 * arg1) + (1461 * arg2 - 14 / 12) + (1948 * 3600) / 4) + (24 * 3600 * (367 * arg2) + (-4404 * arg2 - 14 / 12) - 734 / 12) + (-86400 * 3 * arg1 + (arg2 - 14 / 12) + 4900 / 100 / 4) - (59343888 * 24 * 3600))
}



}
