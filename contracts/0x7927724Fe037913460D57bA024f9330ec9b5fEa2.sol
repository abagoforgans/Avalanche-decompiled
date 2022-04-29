contract main {




// =====================  Runtime code  =====================


const sub_a9ea9681(?) = 1000


address owner;
address sub_8336f2c4Address;
address sub_650a21b9Address;
address sub_142e7e3fAddress;
uint256 sub_acab85ae;
uint256 sub_eead113b;
uint256 sub_2716a509;
uint256 stor7;
uint256 sub_af6bf70c;
array of uint256 sub_1f5cb64b;
array of address sub_60b663bb;
uint8 sub_13c9c43e; offset 160
uint128 stor19; offset 160
address stor19;

function sub_13c9c43e(?) payable {
    return bool(sub_13c9c43e)
}

function sub_142e7e3f(?) payable {
    return sub_142e7e3fAddress
}

function sub_1f5cb64b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_1f5cb64b.length
    return sub_1f5cb64b[arg1]
}

function sub_2716a509(?) payable {
    return sub_2716a509
}

function sub_60b663bb(?) payable {
    if sub_60b663bb.length < 1:
        revert with 0, 17
    if sub_60b663bb.length - 1 >= sub_60b663bb.length:
        revert with 0, 50
    return sub_60b663bb[sub_60b663bb.length]
}

function sub_650a21b9(?) payable {
    return sub_650a21b9Address
}

function sub_8336f2c4(?) payable {
    return sub_8336f2c4Address
}

function owner() payable {
    return owner
}

function allGames(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_60b663bb.length
    return sub_60b663bb[arg1]
}

function sub_acab85ae(?) payable {
    return sub_acab85ae
}

function sub_af6bf70c(?) payable {
    return sub_af6bf70c
}

function sub_eead113b(?) payable {
    return sub_eead113b
}

function numberOfGames() payable {
    return sub_60b663bb.length
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

function sub_1a1af164(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2716a509 = arg1
}

function sub_1a330868(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_acab85ae = arg1
    sub_eead113b = arg2
}

function sub_61ff6a3f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_142e7e3fAddress = address(arg1)
}

function sub_e3db290c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor19.field_0) = address(arg1)
}

function sub_796c7ffe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor19.field_160) = Mask(96, 0, bool(arg1))
}

function sub_75f6e1c8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'bad input'
    sub_650a21b9Address = address(arg1)
}

function sub_92cfee01(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'bad input'
    sub_8336f2c4Address = address(arg1)
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

function sub_17913a75(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0x7f447cc0 with:
         gas gas_remaining wei
        args address(arg2), arg3, address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d38f2bd5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).recoverERC20(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fc948b50(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_60b663bb.length < 1:
        revert with 0, 17
    if sub_60b663bb.length - 1 >= sub_60b663bb.length:
        revert with 0, 50
    require ext_code.size(sub_60b663bb[sub_60b663bb.length])
    call sub_60b663bb[sub_60b663bb.length].0xfc948b50 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeStartDate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_60b663bb.length < 1:
        revert with 0, 17
    if sub_60b663bb.length - 1 >= sub_60b663bb.length:
        revert with 0, 50
    require ext_code.size(sub_60b663bb[sub_60b663bb.length])
    call sub_60b663bb[sub_60b663bb.length].changeStartDate(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function roll(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_60b663bb.length < 1:
        revert with 0, 17
    if sub_60b663bb.length - 1 >= sub_60b663bb.length:
        revert with 0, 50
    if msg.sender == sub_60b663bb[sub_60b663bb.length]:
        if sub_13c9c43e:
            require ext_code.size(address(stor19.field_0))
            call address(stor19.field_0).0x14198ab4 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_f57f47f8(?) payable {
    require calldata.size - 4 >= 96
    require 35 < calldata.size
    require 100 <= calldata.size
    idx = 4
    s = 96
    while idx < 100:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mem[128] > mem[160]:
        revert with 0, 'invalid bidIncrease values'
    stor7 = mem[96]
    s = 8
    idx = 128
    while 192 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 10
    while 10 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function sub_bf67e4fa(?) payable {
    require calldata.size - 4 >= 192
    require 35 < calldata.size
    require 196 <= calldata.size
    idx = 4
    s = 96
    while idx < 196:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mem[224] > !mem[256]:
        revert with 0, 17
    if mem[224] + mem[256] != 10000:
        revert with 0, 'bad poisonSplit inputs'
    if 1000 < mem[128]:
        revert with 0, 'bad poisonBipsFee inpupt'
    s = 10
    idx = 96
    while 288 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 16
    while 16 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function sub_0f5b4433(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = 128
    idx = cd[36] + 36
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != cd[4]:
        revert with 0, 'wrong length of _JACKPOT_SPLIT input'
    sub_af6bf70c = cd[4]
}

function sub_47ffd897(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_60b663bb.length < 1:
        revert with 0, 17
    if sub_60b663bb.length - 1 >= sub_60b663bb.length:
        revert with 0, 50
    require ext_code.size(sub_60b663bb[sub_60b663bb.length])
    staticcall sub_60b663bb[sub_60b663bb.length].0x1cc41bba with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'previous game not yet resolved'
    mem[ceil32(return_data.size) + 96] = sub_8336f2c4Address
    mem[ceil32(return_data.size) + 128] = sub_650a21b9Address
    mem[ceil32(return_data.size) + 160] = sub_142e7e3fAddress
    mem[ceil32(return_data.size) + 192] = owner
    mem[ceil32(return_data.size) + 224 len 14171] = code.data[5875 len 14171]
    idx = 0
    s = ceil32(return_data.size) + 96
    t = ceil32(return_data.size) + 14555
    while idx < 4:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    t = ceil32(return_data.size) + 15067
    while idx < sub_1f5cb64b.length:
        mem[t] = sub_1f5cb64b[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    idx = 0
    s = 7
    t = ceil32(return_data.size) + 14715
    while idx < 3:
        mem[t] = stor[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    idx = 0
    s = 10
    t = ceil32(return_data.size) + 14811
    while idx < 6:
        mem[t] = stor[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    create contract with 0 wei
                    code: code.data[5875 len 14171], sub_acab85ae, sub_eead113b, arg1, sub_2716a509, sub_af6bf70c, mem[ceil32(return_data.size) + 14555 len 128], 640, mem[ceil32(return_data.size) + 14715 len 288], bool(sub_13c9c43e), sub_1f5cb64b.length, mem[ceil32(return_data.size) + 15067 len 32 * sub_1f5cb64b.length]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_60b663bb.length++
    sub_60b663bb[sub_60b663bb.length] = address(create.new_address)
    return address(create.new_address)
}



}
