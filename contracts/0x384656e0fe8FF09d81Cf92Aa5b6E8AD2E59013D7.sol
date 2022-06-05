contract main {




// =====================  Runtime code  =====================


#
#  - getLeaderboard()
#  - sub_9384f342(?)
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

function sub_347cab75(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_347cab75.length
    return sub_347cab75[arg1]
}

function sub_4bed279d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_4bed279d[arg1]
}

function tokenContract() payable {
    return tokenContractAddress
}

function sub_5c444cdc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_5c444cdc.length
    return sub_5c444cdc[arg1]
}

function sub_60617903(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_60617903.length
    return sub_60617903[arg1]
}

function sub_7b2f3194(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_7b2f3194.length
    return sub_7b2f3194[arg1]
}

function owner() payable {
    return owner
}

function sub_b29c662a(?) payable {
    return sub_b29c662aAddress
}

function sub_b9e0b017(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_b9e0b017.length
    return sub_b9e0b017[arg1]
}

function sub_d177d79a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_d177d79a.length
    return sub_d177d79a[arg1]
}

function sub_eac0926f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_eac0926f.length
    return sub_eac0926f[arg1]
}

function sub_f8b4d92d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_f8b4d92d.length
    return sub_f8b4d92d[arg1]
}

function _fallback() payable {
    revert
}

function getSecond(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint8(arg1 % 60)
}

function getMinute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint8(arg1 / 60 % 60)
}

function getHour(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint8(arg1 / 60 / 60 % 24)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function isLeapYear(uint16 arg1) payable {
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

function leapYearsBefore(uint256 arg1) payable {
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getDaysInMonth(uint8 arg1, uint16 arg2) payable {
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

function sub_11c4682e(?) payable {
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

function sub_20ef1f9f(?) payable {
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

function sub_219d6635(?) payable {
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

function sub_2a0e3f6d(?) payable {
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

function sub_37366ae3(?) payable {
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

function sub_c07f2aaf(?) payable {
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

function sub_d25bd309(?) payable {
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

function sub_90e23589(?) payable {
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

function sub_e82e55cd(?) payable {
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

function redeem(uint256 arg1) payable {
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
        call tokenContractAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 10^18 * block.timestamp - sub_4bed279d[arg1] / 24 * 3600
    else:
        if block.timestamp < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if block.timestamp - ext_call.return_data[0] / 24 * 3600 and 10^18 > -1 / block.timestamp - ext_call.return_data[0] / 24 * 3600:
            revert with 'NH{q', 17
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 10^18 * block.timestamp - ext_call.return_data[0] / 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_4bed279d[arg1] = block.timestamp
}

function getYear(uint256 arg1) payable {
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



}
