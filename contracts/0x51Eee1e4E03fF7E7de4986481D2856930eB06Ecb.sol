contract main {




// =====================  Runtime code  =====================


#
#  - show_reserves()
#  - sub_d2d75c89(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner; offset 16
uint256 stor0; offset 16
address new_owner;
uint256 sub_be18864e;
mapping of struct stor3;
address adminAddress;
uint256 stor4;
address sub_436eb0c5Address;
uint256 sub_8e6d5af6;
address sub_868c3afeAddress;
uint256 stor7;
address sub_d6b225e9Address;
uint256 sub_6db76761;
address newGovernorAddress;
address governorAddress;
uint256 stor11;
address sub_e619ca71Address;
address sub_121af73eAddress;
address sub_25f66afbAddress;
uint256 stor15;
uint256 system_status;
array of struct stor17;
array of struct stor18;
array of struct stor19;
array of struct stor20;
array of struct stor21;
array of struct stor22;
mapping of uint8 stor23;
mapping of uint8 stor24;
uint256 sub_92f9e3b1;
address routerAddress;
address sub_993832b7Address;
address busdAddress;
address sub_94087e14Address;
address sub_5911b7c6Address;
address sub_e81c8da7Address;
uint256 sub_cacf5689;
uint256 sub_5d3c5a8a;
uint256 sub_df4a6fc3;
uint256 sub_f63d0c5a;
uint256 sub_862664df;
address sub_e66116d8Address;
uint256 sub_bcc90628;
uint256 sub_ade30715;
uint256 sub_dd17713b;
mapping of struct stor41;
array of address sub_90e2e78c;
array of address operators;
mapping of struct stor44;
mapping of uint256 stor45;
uint256 stor3ACD;
uint256 stor4AC3;
array of address stor86304851309914298838325653292133865142491349004854749820968132734518352496082;

function governor() payable {
    return address(governorAddress)
}

function sub_121af73e(?) payable {
    return sub_121af73eAddress
}

function sub_25f66afb(?) payable {
    return sub_25f66afbAddress
}

function busd() payable {
    return busdAddress
}

function sub_436eb0c5(?) payable {
    return sub_436eb0c5Address
}

function new_owner() payable {
    return new_owner
}

function system_status() payable {
    return system_status
}

function sub_5911b7c6(?) payable {
    return sub_5911b7c6Address
}

function sub_5d3c5a8a(?) payable {
    return sub_5d3c5a8a
}

function sub_6db76761(?) payable {
    return sub_6db76761
}

function sub_862664df(?) payable {
    return sub_862664df
}

function sub_868c3afe(?) payable {
    return address(sub_868c3afeAddress)
}

function owner() payable {
    return owner
}

function sub_8e6d5af6(?) payable {
    return sub_8e6d5af6
}

function newGovernor() payable {
    return newGovernorAddress
}

function sub_90e2e78c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_90e2e78c.length
    return sub_90e2e78c[arg1]
}

function sub_92f9e3b1(?) payable {
    return sub_92f9e3b1
}

function sub_94087e14(?) payable {
    return sub_94087e14Address
}

function sub_993832b7(?) payable {
    return sub_993832b7Address
}

function sub_ade30715(?) payable {
    return sub_ade30715
}

function sub_bcc90628(?) payable {
    return sub_bcc90628
}

function sub_be18864e(?) payable {
    return sub_be18864e
}

function sub_cacf5689(?) payable {
    return sub_cacf5689
}

function sub_d6b225e9(?) payable {
    return sub_d6b225e9Address
}

function sub_dd17713b(?) payable {
    return sub_dd17713b
}

function sub_df4a6fc3(?) payable {
    return sub_df4a6fc3
}

function operators(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < operators.length
    return address(operators[arg1])
}

function sub_e619ca71(?) payable {
    return sub_e619ca71Address
}

function sub_e66116d8(?) payable {
    return sub_e66116d8Address
}

function sub_e7dcdc9e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor24[arg1])
}

function sub_e81c8da7(?) payable {
    return sub_e81c8da7Address
}

function sub_f63d0c5a(?) payable {
    return sub_f63d0c5a
}

function admin() payable {
    return address(adminAddress)
}

function router() payable {
    return routerAddress
}

function blacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor23[arg1])
}

function _fallback() payable {
    revert
}

function userIsAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == address(adminAddress))
}

function sub_4d82df06(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return (address(arg1) == address(governorAddress))
}

function sub_f5af407c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return (address(arg1) == address(sub_868c3afeAddress))
}

function acceptGovernorship() payable {
    if sub_e619ca71Address != msg.sender:
        revert with 0, 'Only new governor'
    address(governorAddress) = sub_e619ca71Address
    sub_e619ca71Address = 0
    emit 0x5ec3e043: sub_e619ca71Address
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'JaxOwnable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_03bcff73(?) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Governor can perform this operation'
    sub_f63d0c5a = arg1
    emit 0x70d92690: arg1
}

function sub_6ef08b03(?) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Governor can perform this operation'
    sub_dd17713b = arg1
    emit 0x5515d6ce: arg1
}

function sub_8f8823f8(?) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Governor can perform this operation'
    sub_5d3c5a8a = arg1
    emit 0x94d162c6: arg1
}

function sub_e9321564(?) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Governor can perform this operation'
    system_status = arg1
    emit 0x333627ed: arg1
}

function updateOwner() payable {
    if new_owner != msg.sender:
        revert with 0, 'Only new owner'
    if block.timestamp < sub_be18864e:
        revert with 0, 'New admin is not unlocked yet'
    Mask(240, 0, stor0.field_16) = new_owner
    emit OwnershipTransferred(owner, new_owner);
    new_owner = 0
}

function updateAdmin() payable {
    if sub_436eb0c5Address != msg.sender:
        revert with 0, 'Only new admin'
    if block.timestamp < sub_8e6d5af6:
        revert with 0, 'New admin is not unlocked yet'
    address(adminAddress) = sub_436eb0c5Address
    sub_436eb0c5Address = 0
    emit 0xb6c17fe0: sub_436eb0c5Address
}

function setPriceImpactLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Governor can perform this operation'
    if arg1 > 3 * 10^6:
        revert with 0, 'price impact cannot be over 3%'
    sub_92f9e3b1 = arg1
    emit 0xc51239b7: arg1
}

function sub_9cfe52aa(?) payable {
    if sub_d6b225e9Address != msg.sender:
        revert with 0, 'Only new ajax prime'
    if block.timestamp < sub_6db76761:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New ajax prime is not unlocked yet'
    address(sub_868c3afeAddress) = sub_d6b225e9Address
    sub_d6b225e9Address = 0
    emit 0x649c7437: sub_d6b225e9Address
}

function sub_291ee893(?) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Governor can perform this operation'
    if arg1 < 50 * 10^6:
        revert with 0, 'Ratio must be 50% - 100%'
    if arg1 > 100 * 10^6:
        revert with 0, 'Ratio must be 50% - 100%'
    sub_ade30715 = arg1
    emit 0xe7670546: arg1
}

function sub_70e15865(?) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Governor can perform this operation'
    if arg1 < 10 * 10^6:
        revert with 0, 'Ratio must be 10% - 200%'
    if arg1 > 200 * 10^6:
        revert with 0, 'Ratio must be 10% - 200%'
    sub_bcc90628 = arg1
    emit 0x4b6a0688: arg1
}

function sub_c9ba906b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_5911b7c6Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only VRP contract can perform this operation.'
    newGovernorAddress = address(arg1)
    if 168 * 24 * 3600 > !block.timestamp:
        revert with 0, 17
    stor15 = block.timestamp + (168 * 24 * 3600)
    emit 0x8bac9393: address(arg1)
}

function sub_71428a43(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if address(governorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Governor can perform this operation'
    require ext_code.size(address(arg1))
    call address(arg1).0x8e61f3e7 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3a78f1c5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if address(governorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Governor can perform this operation'
    require ext_code.size(address(arg1))
    call address(arg1).0x4eb59c15 with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setNewOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'JaxOwnable: caller is not the owner'
    if not arg1:
        revert with 0, 'New owner cannot be zero address'
    new_owner = arg1
    if 48 * 24 * 3600 > !block.timestamp:
        revert with 0, 17
    sub_be18864e = block.timestamp + (48 * 24 * 3600)
    emit 0x8a30e202: address(arg1), block.timestamp + (48 * 24 * 3600)
}

function sub_2e82311a(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    if address(governorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Governor can perform this operation'
    require ext_code.size(address(arg1))
    call address(arg1).0x367065de with:
         gas gas_remaining wei
        args arg2, arg3, address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f1ea05d6(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if not address(arg2):
        revert with 0, 'Only non-zero address'
    if address(governorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Governor can perform this operation'
    if arg1 > 2500000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Markup fee must be less than 2.5%'
    sub_862664df = arg1
    sub_e66116d8Address = address(arg2)
    emit 0x20b205cf: arg1, address(arg2)
}

function sub_d94938e9(?) payable {
    if address(governorAddress) == newGovernorAddress:
        revert with 0, 'New governor hasn't been elected'
    if not newGovernorAddress:
        revert with 0, 'New governor hasn't been elected'
    if stor15 > block.timestamp:
        revert with 0, 'New governor is not ready'
    if newGovernorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not nominated as potential governor'
    address(governorAddress) = newGovernorAddress
    newGovernorAddress = 0
    emit 0xf2ad851c: address(governorAddress), 0
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(adminAddress) != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Admin can perform this operation'
    if not arg1:
        address(adminAddress) = arg1
        sub_436eb0c5Address = 0
        emit 0xb6c17fe0: arg1
    else:
        sub_436eb0c5Address = arg1
        if 48 * 24 * 3600 > !block.timestamp:
            revert with 0, 17
        sub_8e6d5af6 = block.timestamp + (48 * 24 * 3600)
        emit 0xf9282db7: address(arg1), sub_8e6d5af6
}

function sub_74674efa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(sub_868c3afeAddress) != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only AjaxPrime can perform this operation'
    if not address(arg1):
        address(sub_868c3afeAddress) = address(arg1)
        sub_d6b225e9Address = 0
        emit 0x649c7437: address(arg1)
    else:
        sub_d6b225e9Address = address(arg1)
        if 48 * 24 * 3600 > !block.timestamp:
            revert with 0, 17
        sub_6db76761 = block.timestamp + (48 * 24 * 3600)
        emit 0x946dfa85: address(arg1), block.timestamp + (48 * 24 * 3600)
}

function sub_cad75ded(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < operators.length:
        mem[0] = 43
        if address(operators[idx]) != address(arg1):
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor44[address(arg1)].field_0:
            mem[128] = stor44[address(arg1)].field_0 / 256^0 << 224
            idx = 128
            s = 0
            while (32 * stor44[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = stor44[address(arg1)].field_0 / 256^((4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)) << 224
                idx = idx + 32
                s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
                continue 
        idx = 0
        while idx < stor44[address(arg1)].field_0:
            if idx >= stor44[address(arg1)].field_0:
                revert with 0, 50
            if Mask(32, 224, mem[(32 * idx) + 128]) == call.func_hash:
                return 1
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            continue 
        return 0
    return 0
}

function sub_0c06c49e(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if address(governorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Governor can perform this operation'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 23
        stor23[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = cd[4] + 36
    t = 192
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x25ff42f8: Array(len=('cd', 4).length, data=mem[192 len 32 * ('cd', 4).length]), bool(cd[36])
}

function setOperators(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Governor can perform this operation'
    operators.length = 0
    idx = 0
    while operators.length > idx:
        uint256(operators[idx]) = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        operators.length++
        mem[0] = 43
        address(operators[operators.length]) = address(cd[((32 * idx) + arg1 + 36)])
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = arg1 + 36
    t = 160
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xfb94f042: Array(len=arg1.length, data=mem[160 len 32 * arg1.length])
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
        uint256(stor11) = msg.sender or Mask(96, 160, uint256(stor11))
        uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
        system_status = 2
        Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
        routerAddress = arg1
    else:
        uint16(stor0.field_0) = 257
        uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
        uint256(stor11) = msg.sender or Mask(96, 160, uint256(stor11))
        uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
        system_status = 2
        Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
        routerAddress = arg1
        uint8(stor0.field_8) = 0
}

function setGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Only non-zero address'
    if address(sub_868c3afeAddress) != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only AjaxPrime can perform this operation'
    if sha3(call.data[0 len calldata.size]) != stor3[call.func_hash].field_0:
        stor3[call.func_hash].field_320 = Mask(192, 0, msg.sender)
        stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
        stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
        emit 0xfe2a5b79: call.func_hash, Array(len=calldata.size, data=call.data[0 len calldata.size])
    else:
        if stor3[call.func_hash].field_320 != msg.sender:
            stor3[call.func_hash].field_320 = Mask(192, 0, msg.sender)
            stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
            stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
            emit 0xfe2a5b79: call.func_hash, Array(len=calldata.size, data=call.data[0 len calldata.size])
        else:
            if stor3[call.func_hash].field_480:
                revert with 0, 'Already executed'
            if 48 * 24 * 3600 > !stor3[call.func_hash].field_256:
                revert with 0, 17
            if block.timestamp < stor3[call.func_hash].field_256 + (48 * 24 * 3600):
                revert with 0, 'Running is Locked'
            sub_e619ca71Address = arg1
            emit 0xdfef7cef: arg1
            stor3[call.func_hash].field_480 = 1
}

function sub_3e895946(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'Only non-zero address'
    if address(adminAddress) != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Admin can perform this operation'
    if sha3(call.data[0 len calldata.size]) != stor3[call.func_hash].field_0:
        stor3[call.func_hash].field_320 = Mask(192, 0, msg.sender)
        stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
        stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
        emit 0xfe2a5b79: call.func_hash, Array(len=calldata.size, data=call.data[0 len calldata.size])
    else:
        if stor3[call.func_hash].field_320 != msg.sender:
            stor3[call.func_hash].field_320 = Mask(192, 0, msg.sender)
            stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
            stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
            emit 0xfe2a5b79: call.func_hash, Array(len=calldata.size, data=call.data[0 len calldata.size])
        else:
            if stor3[call.func_hash].field_480:
                revert with 0, 'Already executed'
            if 48 * 24 * 3600 > !stor3[call.func_hash].field_256:
                revert with 0, 17
            if block.timestamp < stor3[call.func_hash].field_256 + (48 * 24 * 3600):
                revert with 0, 'Running is Locked'
            sub_25f66afbAddress = address(arg1)
            emit 0x11eb3d15: address(arg1)
            stor3[call.func_hash].field_480 = 1
}

function sub_a5a45686(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'Only non-zero address'
    if address(adminAddress) != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Admin can perform this operation'
    if sha3(call.data[0 len calldata.size]) != stor3[call.func_hash].field_0:
        stor3[call.func_hash].field_320 = Mask(192, 0, msg.sender)
        stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
        stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
        emit 0xfe2a5b79: call.func_hash, Array(len=calldata.size, data=call.data[0 len calldata.size])
    else:
        if stor3[call.func_hash].field_320 != msg.sender:
            stor3[call.func_hash].field_320 = Mask(192, 0, msg.sender)
            stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
            stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
            emit 0xfe2a5b79: call.func_hash, Array(len=calldata.size, data=call.data[0 len calldata.size])
        else:
            if stor3[call.func_hash].field_480:
                revert with 0, 'Already executed'
            if 48 * 24 * 3600 > !stor3[call.func_hash].field_256:
                revert with 0, 17
            if block.timestamp < stor3[call.func_hash].field_256 + (48 * 24 * 3600):
                revert with 0, 'Running is Locked'
            sub_121af73eAddress = address(arg1)
            emit 0xa7f07fa0: address(arg1)
            stor3[call.func_hash].field_480 = 1
}

function sub_951ab7b1(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Governor can perform this operation'
    idx = 0
    while idx < stor44[address(cd[4])].field_0:
        if not stor44[address(cd[4])].field_0:
            revert with 0, 49
        mem[0] = sha3(address(cd[4]), 44)
        stor44[address(cd[4])][0.125 / stor44[address(cd[4])].field_0 - 1].field_0 = !(test266151307() * 256^(4 * stor44[address(cd[4])].field_0 - 1 % 8)) and stor44[address(cd[4])][0.125 / stor44[address(cd[4])].field_0 - 1].field_0
        stor44[address(cd[4])].field_0--
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == Mask(32, 224, cd[((32 * idx) + cd[36] + 36)])
        stor44[address(cd[4])].field_0++
        mem[0] = sha3(address(cd[4]), 44)
        stor44[address(cd[4])][stor44[address(cd[4])].field_3].field_0 = uint32(cd[((32 * idx) + cd[36] + 36)]) >> 224 * 256^(4 * stor44[address(cd[4])].field_0) or !(test266151307() * 256^(4 * stor44[address(cd[4])].field_0)) and stor44[address(cd[4])][stor44[address(cd[4])].field_3].field_0
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = 192
    t = cd[36] + 36
    while idx < ('cd', 36).length:
        require cd[t] == Mask(32, 224, cd[t])
        mem[s] = Mask(32, 224, cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x8174c091: address(cd[4]), Array(len=('cd', 36).length, data=mem[192 len 32 * ('cd', 36).length])
}

function setTokenAddresses(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if address(adminAddress) != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Admin can perform this operation'
    if not arg1:
        revert with 0, 'Only non-zero address'
    if not arg2:
        revert with 0, 'Only non-zero address'
    if not arg3:
        revert with 0, 'Only non-zero address'
    if not arg4:
        revert with 0, 'Only non-zero address'
    if not arg5:
        revert with 0, 'Only non-zero address'
    if sha3(call.data[0 len calldata.size]) != stor3[call.func_hash].field_0:
        stor3[call.func_hash].field_320 = Mask(192, 0, msg.sender)
        stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
        stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
        emit 0xfe2a5b79: call.func_hash, Array(len=calldata.size, data=call.data[0 len calldata.size])
    else:
        if stor3[call.func_hash].field_320 != msg.sender:
            stor3[call.func_hash].field_320 = Mask(192, 0, msg.sender)
            stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
            stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
            emit 0xfe2a5b79: call.func_hash, Array(len=calldata.size, data=call.data[0 len calldata.size])
        else:
            if stor3[call.func_hash].field_480:
                revert with 0, 'Already executed'
            if 48 * 24 * 3600 > !stor3[call.func_hash].field_256:
                revert with 0, 17
            if block.timestamp < stor3[call.func_hash].field_256 + (48 * 24 * 3600):
                revert with 0, 'Running is Locked'
            busdAddress = arg1
            sub_993832b7Address = arg2
            sub_94087e14Address = arg3
            sub_5911b7c6Address = arg4
            sub_e81c8da7Address = arg5
            require ext_code.size(sub_121af73eAddress)
            call sub_121af73eAddress.0xe8b35086 with:
                 gas gas_remaining wei
                args 0, 0, address(arg2), address(arg3), arg4, address(arg5)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x13ae3ffa: address(arg1), address(arg2), address(arg3), address(arg4), arg5
            stor3[call.func_hash].field_480 = 1
}

function sub_d422c65c(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if address(sub_868c3afeAddress) != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only AjaxPrime can perform this operation'
    mem[96 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 96] = 0
    if sha3(call.data[0 len calldata.size]) != stor3[call.func_hash].field_0:
        stor3[call.func_hash].field_320 = Mask(192, 0, msg.sender)
        stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
        stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
        emit 0xfe2a5b79: call.func_hash, Array(len=calldata.size, data=call.data[0 len calldata.size])
    else:
        if stor3[call.func_hash].field_320 != msg.sender:
            stor3[call.func_hash].field_320 = Mask(192, 0, msg.sender)
            stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
            stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
            emit 0xfe2a5b79: call.func_hash, Array(len=calldata.size, data=call.data[0 len calldata.size])
        else:
            if stor3[call.func_hash].field_480:
                revert with 0, 'Already executed'
            if 48 * 24 * 3600 > !stor3[call.func_hash].field_256:
                revert with 0, 17
            if block.timestamp < stor3[call.func_hash].field_256 + (48 * 24 * 3600):
                revert with 0, 'Running is Locked'
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 24
                stor24[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            s = cd[4] + 36
            t = 192
            while idx < ('cd', 4).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit 0xb1d42cd5: Array(len=('cd', 4).length, data=mem[192 len 32 * ('cd', 4).length]), bool(cd[36])
            stor3[call.func_hash].field_480 = 1
}

function sub_ecef19af(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(sub_868c3afeAddress) != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only AjaxPrime can perform this operation'
    if sha3(call.data[0 len calldata.size]) != stor3[call.func_hash].field_0:
        stor3[call.func_hash].field_320 = Mask(192, 0, msg.sender)
        stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
        stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
        emit 0xfe2a5b79: call.func_hash, Array(len=calldata.size, data=call.data[0 len calldata.size])
    else:
        if stor3[call.func_hash].field_320 != msg.sender:
            stor3[call.func_hash].field_320 = Mask(192, 0, msg.sender)
            stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
            stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
            emit 0xfe2a5b79: call.func_hash, Array(len=calldata.size, data=call.data[0 len calldata.size])
        else:
            if stor3[call.func_hash].field_480:
                revert with 0, 'Already executed'
            if 48 * 24 * 3600 > !stor3[call.func_hash].field_256:
                revert with 0, 17
            if block.timestamp < stor3[call.func_hash].field_256 + (48 * 24 * 3600):
                revert with 0, 'Running is Locked'
            stor41[address(arg1)].field_0 = 0
            idx = 0
            while idx < sub_90e2e78c.length:
                mem[0] = 42
                if sub_90e2e78c[idx] != address(arg1):
                    if idx > -2:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if sub_90e2e78c.length > 1:
                    if sub_90e2e78c.length < 1:
                        revert with 0, 17
                    if sub_90e2e78c.length - 1 >= sub_90e2e78c.length:
                        revert with 0, 50
                    if idx >= sub_90e2e78c.length:
                        revert with 0, 50
                    sub_90e2e78c[idx] = sub_90e2e78c[sub_90e2e78c.length]
                if not sub_90e2e78c.length:
                    revert with 0, 49
                sub_90e2e78c[sub_90e2e78c.length] = 0
                sub_90e2e78c.length--
                if idx == sub_90e2e78c.length:
                    revert with 0, 'Invalid JToken Address'
                emit 0x45c805cc: address(arg1)
                stor3[call.func_hash].field_480 = 1
            if sub_90e2e78c.length == sub_90e2e78c.length:
                revert with 0, 'Invalid JToken Address'
            emit 0x45c805cc: address(arg1)
            stor3[call.func_hash].field_480 = 1
}

function sub_3e4f482e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor41[arg1].field_768:
        if stor41[arg1].field_768 == uint255(stor41[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if stor41[arg1].field_768:
            if stor41[arg1].field_768 == uint255(stor41[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor41[arg1].field_768):
                if 31 >= uint255(stor41[arg1].field_768) * 0.5:
                    mem[128] = 256 * stor41[arg1].field_776
                else:
                    mem[128] = stor41[arg1][3].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor41[arg1].field_768) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor41[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor41[arg1].field_768 == stor41[arg1].field_769 < 32:
                revert with 0, 34
            if stor41[arg1].field_769:
                if 31 >= stor41[arg1].field_769:
                    mem[128] = 256 * stor41[arg1].field_776
                else:
                    mem[128] = stor41[arg1][3].field_0
                    idx = 128
                    s = 0
                    while stor41[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = stor41[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor41[arg1].field_0, 
               stor41[arg1].field_256,
               stor41[arg1].field_512,
               Array(len=2 * Mask(256, -1, stor41[arg1].field_768), data=mem[128 len ceil32(uint255(stor41[arg1].field_768) * 0.5)])
    if stor41[arg1].field_768 == stor41[arg1].field_769 < 32:
        revert with 0, 34
    if stor41[arg1].field_768:
        if stor41[arg1].field_768 == uint255(stor41[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor41[arg1].field_768):
            if 31 >= uint255(stor41[arg1].field_768) * 0.5:
                mem[128] = 256 * stor41[arg1].field_776
            else:
                mem[128] = stor41[arg1][3].field_0
                idx = 128
                s = 0
                while (uint255(stor41[arg1].field_768) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor41[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor41[arg1].field_768 == stor41[arg1].field_769 < 32:
            revert with 0, 34
        if stor41[arg1].field_769:
            if 31 >= stor41[arg1].field_769:
                mem[128] = 256 * stor41[arg1].field_776
            else:
                mem[128] = stor41[arg1][3].field_0
                idx = 128
                s = 0
                while stor41[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = stor41[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor41[arg1].field_0, 
           stor41[arg1].field_256,
           stor41[arg1].field_512,
           Array(len=stor41[arg1].field_768, data=mem[128 len ceil32(stor41[arg1].field_769)])
}

function sub_3245ce64(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < operators.length:
        mem[0] = 43
        if address(operators[idx]) != msg.sender:
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor44[address(msg.sender)].field_0:
            mem[128] = stor44[address(msg.sender)].field_0 / 256^0 << 224
            idx = 128
            s = 0
            while (32 * stor44[address(msg.sender)].field_0) + 96 > idx:
                mem[idx + 32] = stor44[address(msg.sender)].field_0 / 256^((4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)) << 224
                idx = idx + 32
                s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
                continue 
        idx = 0
        while idx < stor44[address(msg.sender)].field_0:
            if idx >= stor44[address(msg.sender)].field_0:
                revert with 0, 50
            if Mask(32, 224, mem[(32 * idx) + 128]) != call.func_hash:
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if stor3ACD > -3601:
                revert with 0, 17
            if stor3ACD + 3600 > block.timestamp:
                revert with 0, 'Not cool down yet'
            if sub_cacf5689:
                if sub_cacf5689 and 105 > -1 / sub_cacf5689:
                    revert with 0, 17
                if arg1 > 105 * sub_cacf5689 / 100:
                    revert with 0, 'Out of 5% ratio change'
                if sub_cacf5689 and 95 > -1 / sub_cacf5689:
                    revert with 0, 17
                if arg1 < 95 * sub_cacf5689 / 100:
                    revert with 0, 'Out of 5% ratio change'
            sub_cacf5689 = arg1
            emit 0xe284425d: arg1
            stor45[2] = block.timestamp
        if address(governorAddress) != msg.sender:
            revert with 0, 'Only operators can perform this operation'
        if stor3ACD > -3601:
            revert with 0, 17
        if stor3ACD + 3600 > block.timestamp:
            revert with 0, 'Not cool down yet'
        if sub_cacf5689:
            if sub_cacf5689 and 105 > -1 / sub_cacf5689:
                revert with 0, 17
            if arg1 > 105 * sub_cacf5689 / 100:
                revert with 0, 'Out of 5% ratio change'
            if sub_cacf5689 and 95 > -1 / sub_cacf5689:
                revert with 0, 17
            if arg1 < 95 * sub_cacf5689 / 100:
                revert with 0, 'Out of 5% ratio change'
        sub_cacf5689 = arg1
        emit 0xe284425d: arg1
        stor45[2] = block.timestamp
    if address(governorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only operators can perform this operation'
    if stor3ACD > -3601:
        revert with 0, 17
    if stor3ACD + 3600 > block.timestamp:
        revert with 0, 'Not cool down yet'
    if sub_cacf5689:
        if sub_cacf5689 and 105 > -1 / sub_cacf5689:
            revert with 0, 17
        if arg1 > 105 * sub_cacf5689 / 100:
            revert with 0, 'Out of 5% ratio change'
        if sub_cacf5689 and 95 > -1 / sub_cacf5689:
            revert with 0, 17
        if arg1 < 95 * sub_cacf5689 / 100:
            revert with 0, 'Out of 5% ratio change'
    sub_cacf5689 = arg1
    emit 0xe284425d: arg1
    stor45[2] = block.timestamp
}

function sub_ad223c87(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < operators.length:
        mem[0] = 43
        if address(operators[idx]) != msg.sender:
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor44[address(msg.sender)].field_0:
            mem[128] = stor44[address(msg.sender)].field_0 / 256^0 << 224
            idx = 128
            s = 0
            while (32 * stor44[address(msg.sender)].field_0) + 96 > idx:
                mem[idx + 32] = stor44[address(msg.sender)].field_0 / 256^((4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)) << 224
                idx = idx + 32
                s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
                continue 
        idx = 0
        while idx < stor44[address(msg.sender)].field_0:
            if idx >= stor44[address(msg.sender)].field_0:
                revert with 0, 50
            if Mask(32, 224, mem[(32 * idx) + 128]) != call.func_hash:
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if stor4AC3 > -3601:
                revert with 0, 17
            if stor4AC3 + 3600 > block.timestamp:
                revert with 0, 'Not cool down yet'
            if sub_df4a6fc3:
                if sub_df4a6fc3 and 110 > -1 / sub_df4a6fc3:
                    revert with 0, 17
                if arg1 > 110 * sub_df4a6fc3 / 100:
                    revert with 0, 'Out of 10% ratio change'
                if sub_df4a6fc3 and 90 > -1 / sub_df4a6fc3:
                    revert with 0, 17
                if arg1 < 90 * sub_df4a6fc3 / 100:
                    revert with 0, 'Out of 10% ratio change'
            sub_df4a6fc3 = arg1
            emit 0x7ceb491b: arg1
            stor45[1] = block.timestamp
        if address(governorAddress) != msg.sender:
            revert with 0, 'Only operators can perform this operation'
        if stor4AC3 > -3601:
            revert with 0, 17
        if stor4AC3 + 3600 > block.timestamp:
            revert with 0, 'Not cool down yet'
        if sub_df4a6fc3:
            if sub_df4a6fc3 and 110 > -1 / sub_df4a6fc3:
                revert with 0, 17
            if arg1 > 110 * sub_df4a6fc3 / 100:
                revert with 0, 'Out of 10% ratio change'
            if sub_df4a6fc3 and 90 > -1 / sub_df4a6fc3:
                revert with 0, 17
            if arg1 < 90 * sub_df4a6fc3 / 100:
                revert with 0, 'Out of 10% ratio change'
        sub_df4a6fc3 = arg1
        emit 0x7ceb491b: arg1
        stor45[1] = block.timestamp
    if address(governorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only operators can perform this operation'
    if stor4AC3 > -3601:
        revert with 0, 17
    if stor4AC3 + 3600 > block.timestamp:
        revert with 0, 'Not cool down yet'
    if sub_df4a6fc3:
        if sub_df4a6fc3 and 110 > -1 / sub_df4a6fc3:
            revert with 0, 17
        if arg1 > 110 * sub_df4a6fc3 / 100:
            revert with 0, 'Out of 10% ratio change'
        if sub_df4a6fc3 and 90 > -1 / sub_df4a6fc3:
            revert with 0, 17
        if arg1 < 90 * sub_df4a6fc3 / 100:
            revert with 0, 'Out of 10% ratio change'
    sub_df4a6fc3 = arg1
    emit 0x7ceb491b: arg1
    stor45[1] = block.timestamp
}

function sub_385f7468(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    idx = 0
    while idx < operators.length:
        mem[0] = 43
        if address(operators[idx]) != msg.sender:
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor44[address(msg.sender)].field_0:
            mem[128] = stor44[address(msg.sender)].field_0 / 256^0 << 224
            idx = 128
            s = 0
            while (32 * stor44[address(msg.sender)].field_0) + 96 > idx:
                mem[idx + 32] = stor44[address(msg.sender)].field_0 / 256^((4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)) << 224
                idx = idx + 32
                s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
                continue 
        idx = 0
        while idx < stor44[address(msg.sender)].field_0:
            if idx >= stor44[address(msg.sender)].field_0:
                revert with 0, 50
            if Mask(32, 224, mem[(32 * idx) + 128]) != call.func_hash:
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if stor45[address(arg1)] > -3601:
                revert with 0, 17
            if stor45[address(arg1)] + 3600 > block.timestamp:
                revert with 0, 'Not cool down yet'
            if stor41[address(arg1)].field_0 and 103 > -1 / stor41[address(arg1)].field_0:
                revert with 0, 17
            if arg2 > 103 * stor41[address(arg1)].field_0 / 100:
                revert with 0, 'Out of 3% ratio change'
            if stor41[address(arg1)].field_0 and 97 > -1 / stor41[address(arg1)].field_0:
                revert with 0, 17
            if arg2 < 97 * stor41[address(arg1)].field_0 / 100:
                revert with 0, 'Out of 3% ratio change'
            stor41[address(arg1)].field_0 = arg2
            emit 0xd5465f1c: address(arg1), stor41[address(arg1)].field_0, arg2
            stor45[address(arg1)] = block.timestamp
        if address(governorAddress) != msg.sender:
            revert with 0, 'Only operators can perform this operation'
        if stor45[address(arg1)] > -3601:
            revert with 0, 17
        if stor45[address(arg1)] + 3600 > block.timestamp:
            revert with 0, 'Not cool down yet'
        if stor41[address(arg1)].field_0 and 103 > -1 / stor41[address(arg1)].field_0:
            revert with 0, 17
        if arg2 > 103 * stor41[address(arg1)].field_0 / 100:
            revert with 0, 'Out of 3% ratio change'
        if stor41[address(arg1)].field_0 and 97 > -1 / stor41[address(arg1)].field_0:
            revert with 0, 17
        if arg2 < 97 * stor41[address(arg1)].field_0 / 100:
            revert with 0, 'Out of 3% ratio change'
        stor41[address(arg1)].field_0 = arg2
        emit 0xd5465f1c: address(arg1), stor41[address(arg1)].field_0, arg2
        stor45[address(arg1)] = block.timestamp
    if address(governorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only operators can perform this operation'
    if stor45[address(arg1)] > -3601:
        revert with 0, 17
    if stor45[address(arg1)] + 3600 > block.timestamp:
        revert with 0, 'Not cool down yet'
    if stor41[address(arg1)].field_0 and 103 > -1 / stor41[address(arg1)].field_0:
        revert with 0, 17
    if arg2 > 103 * stor41[address(arg1)].field_0 / 100:
        revert with 0, 'Out of 3% ratio change'
    if stor41[address(arg1)].field_0 and 97 > -1 / stor41[address(arg1)].field_0:
        revert with 0, 17
    if arg2 < 97 * stor41[address(arg1)].field_0 / 100:
        revert with 0, 'Out of 3% ratio change'
    stor41[address(arg1)].field_0 = arg2
    emit 0xd5465f1c: address(arg1), stor41[address(arg1)].field_0, arg2
    stor45[address(arg1)] = block.timestamp
}

function sub_1a867b01(?) payable {
    if bool(stor21.length):
        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor21.length):
            if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor21.length):
                if 31 < uint255(stor21.length) * 0.5:
                    mem[128] = uint256(stor21.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor21.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor21[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor21.length), data=mem[128 len ceil32(uint255(stor21.length) * 0.5)])
                mem[128] = 256 * stor21.length.field_8
        else:
            if bool(stor21.length) == stor21.length.field_1 < 32:
                revert with 0, 34
            if stor21.length.field_1:
                if 31 < stor21.length.field_1:
                    mem[128] = uint256(stor21.field_0)
                    idx = 128
                    s = 0
                    while stor21.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor21[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor21.length), data=mem[128 len ceil32(uint255(stor21.length) * 0.5)])
                mem[128] = 256 * stor21.length.field_8
        mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(uint255(stor21.length) * 0.5)] = mem[128 len ceil32(uint255(stor21.length) * 0.5)]
        if ceil32(uint255(stor21.length) * 0.5) > uint255(stor21.length) * 0.5:
            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor21.length), data=mem[128 len ceil32(uint255(stor21.length) * 0.5)], mem[(2 * ceil32(uint255(stor21.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor21.length) * 0.5)]), 
    if bool(stor21.length) == stor21.length.field_1 < 32:
        revert with 0, 34
    if bool(stor21.length):
        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor21.length):
            if 31 < uint255(stor21.length) * 0.5:
                mem[128] = uint256(stor21.field_0)
                idx = 128
                s = 0
                while (uint255(stor21.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor21[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor21.length % 128, data=mem[128 len ceil32(stor21.length.field_1)])
            mem[128] = 256 * stor21.length.field_8
    else:
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 0, 34
        if stor21.length.field_1:
            if 31 < stor21.length.field_1:
                mem[128] = uint256(stor21.field_0)
                idx = 128
                s = 0
                while stor21.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor21[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor21.length % 128, data=mem[128 len ceil32(stor21.length.field_1)])
            mem[128] = 256 * stor21.length.field_8
    mem[ceil32(stor21.length.field_1) + 192 len ceil32(stor21.length.field_1)] = mem[128 len ceil32(stor21.length.field_1)]
    if ceil32(stor21.length.field_1) > stor21.length.field_1:
        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 192] = 0
    return Array(len=stor21.length % 128, data=mem[128 len ceil32(stor21.length.field_1)], mem[(2 * ceil32(stor21.length.field_1)) + 192 len 2 * ceil32(stor21.length.field_1)]), 
}

function sub_31645e90(?) payable {
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor17.length):
            if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor17.length):
                if 31 < uint255(stor17.length) * 0.5:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor17.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)])
                mem[128] = 256 * stor17.length.field_8
        else:
            if bool(stor17.length) == stor17.length.field_1 < 32:
                revert with 0, 34
            if stor17.length.field_1:
                if 31 < stor17.length.field_1:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while stor17.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)])
                mem[128] = 256 * stor17.length.field_8
        mem[ceil32(uint255(stor17.length) * 0.5) + 192 len ceil32(uint255(stor17.length) * 0.5)] = mem[128 len ceil32(uint255(stor17.length) * 0.5)]
        if ceil32(uint255(stor17.length) * 0.5) > uint255(stor17.length) * 0.5:
            mem[ceil32(uint255(stor17.length) * 0.5) + (uint255(stor17.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)], mem[(2 * ceil32(uint255(stor17.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor17.length) * 0.5)]), 
    if bool(stor17.length) == stor17.length.field_1 < 32:
        revert with 0, 34
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor17.length):
            if 31 < uint255(stor17.length) * 0.5:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while (uint255(stor17.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)])
            mem[128] = 256 * stor17.length.field_8
    else:
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 0, 34
        if stor17.length.field_1:
            if 31 < stor17.length.field_1:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while stor17.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)])
            mem[128] = 256 * stor17.length.field_8
    mem[ceil32(stor17.length.field_1) + 192 len ceil32(stor17.length.field_1)] = mem[128 len ceil32(stor17.length.field_1)]
    if ceil32(stor17.length.field_1) > stor17.length.field_1:
        mem[ceil32(stor17.length.field_1) + stor17.length.field_1 + 192] = 0
    return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)], mem[(2 * ceil32(stor17.length.field_1)) + 192 len 2 * ceil32(stor17.length.field_1)]), 
}

function sub_5b4840ef(?) payable {
    if bool(stor20.length):
        if bool(stor20.length) == uint255(stor20.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor20.length):
            if bool(stor20.length) == uint255(stor20.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor20.length):
                if 31 < uint255(stor20.length) * 0.5:
                    mem[128] = uint256(stor20.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor20.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor20.length), data=mem[128 len ceil32(uint255(stor20.length) * 0.5)])
                mem[128] = 256 * stor20.length.field_8
        else:
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                if 31 < stor20.length.field_1:
                    mem[128] = uint256(stor20.field_0)
                    idx = 128
                    s = 0
                    while stor20.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor20.length), data=mem[128 len ceil32(uint255(stor20.length) * 0.5)])
                mem[128] = 256 * stor20.length.field_8
        mem[ceil32(uint255(stor20.length) * 0.5) + 192 len ceil32(uint255(stor20.length) * 0.5)] = mem[128 len ceil32(uint255(stor20.length) * 0.5)]
        if ceil32(uint255(stor20.length) * 0.5) > uint255(stor20.length) * 0.5:
            mem[ceil32(uint255(stor20.length) * 0.5) + (uint255(stor20.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor20.length), data=mem[128 len ceil32(uint255(stor20.length) * 0.5)], mem[(2 * ceil32(uint255(stor20.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor20.length) * 0.5)]), 
    if bool(stor20.length) == stor20.length.field_1 < 32:
        revert with 0, 34
    if bool(stor20.length):
        if bool(stor20.length) == uint255(stor20.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor20.length):
            if 31 < uint255(stor20.length) * 0.5:
                mem[128] = uint256(stor20.field_0)
                idx = 128
                s = 0
                while (uint255(stor20.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor20[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)])
            mem[128] = 256 * stor20.length.field_8
    else:
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 0, 34
        if stor20.length.field_1:
            if 31 < stor20.length.field_1:
                mem[128] = uint256(stor20.field_0)
                idx = 128
                s = 0
                while stor20.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor20[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)])
            mem[128] = 256 * stor20.length.field_8
    mem[ceil32(stor20.length.field_1) + 192 len ceil32(stor20.length.field_1)] = mem[128 len ceil32(stor20.length.field_1)]
    if ceil32(stor20.length.field_1) > stor20.length.field_1:
        mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 192] = 0
    return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)], mem[(2 * ceil32(stor20.length.field_1)) + 192 len 2 * ceil32(stor20.length.field_1)]), 
}

function sub_651030a4(?) payable {
    if bool(stor22.length):
        if bool(stor22.length) == uint255(stor22.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor22.length):
            if bool(stor22.length) == uint255(stor22.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor22.length):
                if 31 < uint255(stor22.length) * 0.5:
                    mem[128] = uint256(stor22.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor22.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor22[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor22.length), data=mem[128 len ceil32(uint255(stor22.length) * 0.5)])
                mem[128] = 256 * stor22.length.field_8
        else:
            if bool(stor22.length) == stor22.length.field_1 < 32:
                revert with 0, 34
            if stor22.length.field_1:
                if 31 < stor22.length.field_1:
                    mem[128] = uint256(stor22.field_0)
                    idx = 128
                    s = 0
                    while stor22.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor22[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor22.length), data=mem[128 len ceil32(uint255(stor22.length) * 0.5)])
                mem[128] = 256 * stor22.length.field_8
        mem[ceil32(uint255(stor22.length) * 0.5) + 192 len ceil32(uint255(stor22.length) * 0.5)] = mem[128 len ceil32(uint255(stor22.length) * 0.5)]
        if ceil32(uint255(stor22.length) * 0.5) > uint255(stor22.length) * 0.5:
            mem[ceil32(uint255(stor22.length) * 0.5) + (uint255(stor22.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor22.length), data=mem[128 len ceil32(uint255(stor22.length) * 0.5)], mem[(2 * ceil32(uint255(stor22.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor22.length) * 0.5)]), 
    if bool(stor22.length) == stor22.length.field_1 < 32:
        revert with 0, 34
    if bool(stor22.length):
        if bool(stor22.length) == uint255(stor22.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor22.length):
            if 31 < uint255(stor22.length) * 0.5:
                mem[128] = uint256(stor22.field_0)
                idx = 128
                s = 0
                while (uint255(stor22.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor22[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor22.length % 128, data=mem[128 len ceil32(stor22.length.field_1)])
            mem[128] = 256 * stor22.length.field_8
    else:
        if bool(stor22.length) == stor22.length.field_1 < 32:
            revert with 0, 34
        if stor22.length.field_1:
            if 31 < stor22.length.field_1:
                mem[128] = uint256(stor22.field_0)
                idx = 128
                s = 0
                while stor22.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor22[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor22.length % 128, data=mem[128 len ceil32(stor22.length.field_1)])
            mem[128] = 256 * stor22.length.field_8
    mem[ceil32(stor22.length.field_1) + 192 len ceil32(stor22.length.field_1)] = mem[128 len ceil32(stor22.length.field_1)]
    if ceil32(stor22.length.field_1) > stor22.length.field_1:
        mem[ceil32(stor22.length.field_1) + stor22.length.field_1 + 192] = 0
    return Array(len=stor22.length % 128, data=mem[128 len ceil32(stor22.length.field_1)], mem[(2 * ceil32(stor22.length.field_1)) + 192 len 2 * ceil32(stor22.length.field_1)]), 
}

function sub_8a4e29d9(?) payable {
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor18.length):
            if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor18.length):
                if 31 < uint255(stor18.length) * 0.5:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor18.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)])
                mem[128] = 256 * stor18.length.field_8
        else:
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 0, 34
            if stor18.length.field_1:
                if 31 < stor18.length.field_1:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while stor18.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)])
                mem[128] = 256 * stor18.length.field_8
        mem[ceil32(uint255(stor18.length) * 0.5) + 192 len ceil32(uint255(stor18.length) * 0.5)] = mem[128 len ceil32(uint255(stor18.length) * 0.5)]
        if ceil32(uint255(stor18.length) * 0.5) > uint255(stor18.length) * 0.5:
            mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)], mem[(2 * ceil32(uint255(stor18.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor18.length) * 0.5)]), 
    if bool(stor18.length) == stor18.length.field_1 < 32:
        revert with 0, 34
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor18.length):
            if 31 < uint255(stor18.length) * 0.5:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while (uint255(stor18.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor18[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)])
            mem[128] = 256 * stor18.length.field_8
    else:
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 0, 34
        if stor18.length.field_1:
            if 31 < stor18.length.field_1:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while stor18.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor18[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)])
            mem[128] = 256 * stor18.length.field_8
    mem[ceil32(stor18.length.field_1) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
    if ceil32(stor18.length.field_1) > stor18.length.field_1:
        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 192] = 0
    return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)], mem[(2 * ceil32(stor18.length.field_1)) + 192 len 2 * ceil32(stor18.length.field_1)]), 
}

function sub_9724b017(?) payable {
    if bool(stor19.length):
        if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor19.length):
            if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor19.length):
                if 31 < uint255(stor19.length) * 0.5:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor19.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)])
                mem[128] = 256 * stor19.length.field_8
        else:
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 0, 34
            if stor19.length.field_1:
                if 31 < stor19.length.field_1:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while stor19.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)])
                mem[128] = 256 * stor19.length.field_8
        mem[ceil32(uint255(stor19.length) * 0.5) + 192 len ceil32(uint255(stor19.length) * 0.5)] = mem[128 len ceil32(uint255(stor19.length) * 0.5)]
        if ceil32(uint255(stor19.length) * 0.5) > uint255(stor19.length) * 0.5:
            mem[ceil32(uint255(stor19.length) * 0.5) + (uint255(stor19.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)], mem[(2 * ceil32(uint255(stor19.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor19.length) * 0.5)]), 
    if bool(stor19.length) == stor19.length.field_1 < 32:
        revert with 0, 34
    if bool(stor19.length):
        if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor19.length):
            if 31 < uint255(stor19.length) * 0.5:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while (uint255(stor19.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)])
            mem[128] = 256 * stor19.length.field_8
    else:
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 0, 34
        if stor19.length.field_1:
            if 31 < stor19.length.field_1:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while stor19.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)])
            mem[128] = 256 * stor19.length.field_8
    mem[ceil32(stor19.length.field_1) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
    if ceil32(stor19.length.field_1) > stor19.length.field_1:
        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 192] = 0
    return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)], mem[(2 * ceil32(stor19.length.field_1)) + 192 len 2 * ceil32(stor19.length.field_1)]), 
}

function sub_20abc3ec(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0, 'Only Governor can perform this operation'
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor17[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor17.length = 0
            idx = 0
            while (uint255(stor17.length) * 0.5) + 31 / 32 > idx:
                stor17[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor17[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor17.length = 0
            idx = 0
            while stor17.length.field_1 + 31 / 32 > idx:
                stor17[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor18[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor18.length = 0
            idx = 0
            while (uint255(stor18.length) * 0.5) + 31 / 32 > idx:
                stor18[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor18[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor18.length = 0
            idx = 0
            while stor18.length.field_1 + 31 / 32 > idx:
                stor18[idx].field_0 = 0
                idx = idx + 1
                continue 
    if ceil32(arg1.length) <= arg1.length:
        emit 0x4bff2ddd: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 64) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256), ceil32(arg1.length) + 96
    else:
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 194] = arg2.length
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 226 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 64) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg2.length + 226] = 0
        emit 0x4bff2ddd: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 226 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 96
}

function sub_c6e80dee(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0, 'Only Governor can perform this operation'
    if bool(stor21.length):
        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor21.length = 0
            idx = 0
            while (uint255(stor21.length) * 0.5) + 31 / 32 > idx:
                stor21[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor21.length = 0
            idx = 0
            while stor21.length.field_1 + 31 / 32 > idx:
                stor21[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor22.length):
        if bool(stor22.length) == uint255(stor22.length) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor22[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor22.length = 0
            idx = 0
            while (uint255(stor22.length) * 0.5) + 31 / 32 > idx:
                stor22[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor22.length) == stor22.length.field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor22[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor22.length = 0
            idx = 0
            while stor22.length.field_1 + 31 / 32 > idx:
                stor22[idx].field_0 = 0
                idx = idx + 1
                continue 
    if ceil32(arg1.length) <= arg1.length:
        emit 0x1022c7d2: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 64) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256), ceil32(arg1.length) + 96
    else:
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 194] = arg2.length
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 226 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 64) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg2.length + 226] = 0
        emit 0x1022c7d2: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 226 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 96
}

function sub_82deac0a(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require cd[132] == address(cd[132])
    if address(sub_868c3afeAddress) != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only AjaxPrime can perform this operation'
    if sha3(call.data[0 len calldata.size]) != stor3[call.func_hash].field_0:
        stor3[call.func_hash].field_320 = Mask(192, 0, msg.sender)
        stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
        stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
        emit 0xfe2a5b79: call.func_hash, Array(len=calldata.size, data=call.data[0 len calldata.size])
    else:
        if stor3[call.func_hash].field_320 != msg.sender:
            stor3[call.func_hash].field_320 = Mask(192, 0, msg.sender)
            stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
            stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
            emit 0xfe2a5b79: call.func_hash, Array(len=calldata.size, data=call.data[0 len calldata.size])
        else:
            if stor3[call.func_hash].field_480:
                revert with 0, 'Already executed'
            if 48 * 24 * 3600 > !stor3[call.func_hash].field_256:
                revert with 0, 17
            if block.timestamp < stor3[call.func_hash].field_256 + (48 * 24 * 3600):
                revert with 0, 'Running is Locked'
            if cd[100] > 2500000:
                revert with 0, 'markup fee cannot over 2.5%'
            if cd[68] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'JUSD-JToken ratio should not be zero'
            if stor41[address(cd[4])].field_0:
                revert with 0, 'Already added'
            sub_90e2e78c.length++
            storBECE[stor42.length] = address(cd[4])
            if stor41[address(cd[4])].field_768:
                if stor41[address(cd[4])].field_768 == uint255(stor41[address(cd[4])].field_768) * 0.5 < 32:
                    revert with 0, 34
                if not ('cd', 36).length:
                    stor41[address(cd[4])].field_768 = 0
                    idx = 0
                    while (uint255(stor41[address(cd[4])].field_768) * 0.5) + 31 / 32 > idx:
                        stor41[address(cd[4])][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor41[address(cd[4])].field_768 = (2 * ('cd', 36).length) + 1
                    s = 0
                    idx = cd[36] + 36
                    while cd[36] + ('cd', 36).length + 36 > idx:
                        stor41[address(cd[4])][s + 3].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                    while (uint255(stor41[address(cd[4])].field_768) * 0.5) + 31 / 32 > idx:
                        stor41[address(cd[4])][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor41[address(cd[4])].field_768 == stor41[address(cd[4])].field_769 < 32:
                    revert with 0, 34
                if not ('cd', 36).length:
                    stor41[address(cd[4])].field_768 = 0
                    idx = 0
                    while stor41[address(cd[4])].field_769 + 31 / 32 > idx:
                        stor41[address(cd[4])][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor41[address(cd[4])].field_768 = (2 * ('cd', 36).length) + 1
                    s = 0
                    idx = cd[36] + 36
                    while cd[36] + ('cd', 36).length + 36 > idx:
                        stor41[address(cd[4])][s + 3].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                    while stor41[address(cd[4])].field_769 + 31 / 32 > idx:
                        stor41[address(cd[4])][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
            stor41[address(cd[4])].field_0 = cd[68]
            stor41[address(cd[4])].field_256 = cd[100]
            stor41[address(cd[4])].field_512 = address(cd[132])
            emit 0x78e17179: address(cd[4]), Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length]), cd[68], cd[100], address(cd[132])
            stor3[call.func_hash].field_480 = 1
}

function sub_ad25a3a8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + 97] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg1.length)) + 129 len arg2.length] = arg2[all]
    if address(adminAddress) != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Only Admin can perform this operation'
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98] = 0
    if sha3(call.data[0 len calldata.size]) != stor3[call.func_hash].field_0:
        stor3[call.func_hash].field_320 = Mask(192, 0, msg.sender)
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98] = 0
        stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
        stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98] = call.func_hash
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 130] = 64
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162] = calldata.size
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 194 len calldata.size] = call.data[0 len calldata.size]
        emit 0xfe2a5b79: mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len calldata.size], 0, mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + calldata.size + 130 len 64], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
    else:
        if stor3[call.func_hash].field_320 != msg.sender:
            stor3[call.func_hash].field_320 = Mask(192, 0, msg.sender)
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len calldata.size] = call.data[0 len calldata.size]
            mem[calldata.size + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98] = 0
            stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
            stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98] = call.func_hash
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 130] = 64
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162] = calldata.size
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 194 len calldata.size] = call.data[0 len calldata.size]
            emit 0xfe2a5b79: mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len calldata.size], 0, mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + calldata.size + 130 len 64], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
        else:
            if stor3[call.func_hash].field_480:
                revert with 0, 'Already executed'
            if 48 * 24 * 3600 > !stor3[call.func_hash].field_256:
                revert with 0, 17
            if block.timestamp < stor3[call.func_hash].field_256 + (48 * 24 * 3600):
                revert with 0, 'Running is Locked'
            if bool(stor19.length):
                if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
                    revert with 0, 34
                if arg1.length:
                    stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
                else:
                    stor19.length = 0
                    idx = 0
                    while (uint255(stor19.length) * 0.5) + 31 / 32 > idx:
                        stor19[idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor19.length) == stor19.length.field_1 < 32:
                    revert with 0, 34
                if arg1.length:
                    stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
                else:
                    stor19.length = 0
                    idx = 0
                    while stor19.length.field_1 + 31 / 32 > idx:
                        stor19[idx].field_0 = 0
                        idx = idx + 1
                        continue 
            if bool(stor20.length):
                if bool(stor20.length) == uint255(stor20.length) * 0.5 < 32:
                    revert with 0, 34
                if arg2.length:
                    stor20[].field_0 = Array(len=arg2.length, data=arg2[all])
                else:
                    stor20.length = 0
                    idx = 0
                    while (uint255(stor20.length) * 0.5) + 31 / 32 > idx:
                        stor20[idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor20.length) == stor20.length.field_1 < 32:
                    revert with 0, 34
                if arg2.length:
                    stor20[].field_0 = Array(len=arg2.length, data=arg2[all])
                else:
                    stor20.length = 0
                    idx = 0
                    while stor20.length.field_1 + 31 / 32 > idx:
                        stor20[idx].field_0 = 0
                        idx = idx + 1
                        continue 
            if ceil32(arg1.length) <= arg1.length:
                emit 0x509da1e8: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 64) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256), ceil32(arg1.length) + 96
            else:
                mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 194] = arg2.length
                mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 226 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 64) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                if ceil32(arg2.length) > arg2.length:
                    mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg2.length + 226] = 0
                emit 0x509da1e8: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 226 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 96
            stor3[call.func_hash].field_480 = 1
}

function get_wjxn_vrp_ratio() payable {
    staticcall sub_5911b7c6Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 100 * 10^6
    staticcall sub_993832b7Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_121af73eAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    staticcall sub_5911b7c6Address.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        staticcall sub_993832b7Address.0x70a08231 with:
                gas gas_remaining wei
               args sub_121af73eAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall sub_993832b7Address.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            staticcall sub_5911b7c6Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if 100 * 10^6 * ext_call.return_data[0] and 1 > -1 / 100 * 10^6 * ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (100 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0])
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            staticcall sub_5911b7c6Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if 100 * 10^6 * ext_call.return_data[0] and 10^uint8(ext_call.return_data[0]) > -1 / 100 * 10^6 * ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (100 * 10^6 * ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0])
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        staticcall sub_5911b7c6Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if 100 * 10^6 * ext_call.return_data[0] and s * t > -1 / 100 * 10^6 * ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (100 * 10^6 * ext_call.return_data[0] * s * t / ext_call.return_data[0])
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        staticcall sub_993832b7Address.0x70a08231 with:
                gas gas_remaining wei
               args sub_121af73eAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall sub_993832b7Address.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            staticcall sub_5911b7c6Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if 100 * 10^6 * ext_call.return_data[0] and 1 > -1 / 100 * 10^6 * ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (100 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            staticcall sub_5911b7c6Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if 100 * 10^6 * ext_call.return_data[0] and 10^uint8(ext_call.return_data[0]) > -1 / 100 * 10^6 * ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (100 * 10^6 * ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        staticcall sub_5911b7c6Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if 100 * 10^6 * ext_call.return_data[0] and s * t > -1 / 100 * 10^6 * ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 18
        return (100 * 10^6 * ext_call.return_data[0] * s * t / ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    staticcall sub_993832b7Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_121af73eAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall sub_993832b7Address.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        staticcall sub_5911b7c6Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if 100 * 10^6 * ext_call.return_data[0] and 1 > -1 / 100 * 10^6 * ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if not s * t:
            revert with 0, 18
        return (100 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / s * t)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        staticcall sub_5911b7c6Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if 100 * 10^6 * ext_call.return_data[0] and 10^uint8(ext_call.return_data[0]) > -1 / 100 * 10^6 * ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if not s * t:
            revert with 0, 18
        return (100 * 10^6 * ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] / s * t)
    u = 10
    v = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    staticcall sub_5911b7c6Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
        revert with 0, 17
    if 100 * 10^6 * ext_call.return_data[0] and u * v > -1 / 100 * 10^6 * ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if not s * t:
        revert with 0, 18
    return (100 * 10^6 * ext_call.return_data[0] * u * v / ext_call.return_data[0] / s * t)
}

function get_vrp_wjxn_ratio() payable {
    staticcall sub_993832b7Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_121af73eAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    staticcall sub_5911b7c6Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    staticcall sub_993832b7Address.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        staticcall sub_5911b7c6Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall sub_5911b7c6Address.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            staticcall sub_993832b7Address.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_121af73eAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if 100 * 10^6 * ext_call.return_data[0] and 1 > -1 / 100 * 10^6 * ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (100 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0])
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            staticcall sub_993832b7Address.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_121af73eAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if 100 * 10^6 * ext_call.return_data[0] and 10^uint8(ext_call.return_data[0]) > -1 / 100 * 10^6 * ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (100 * 10^6 * ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0])
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        staticcall sub_993832b7Address.0x70a08231 with:
                gas gas_remaining wei
               args sub_121af73eAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if 100 * 10^6 * ext_call.return_data[0] and s * t > -1 / 100 * 10^6 * ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (100 * 10^6 * ext_call.return_data[0] * s * t / ext_call.return_data[0])
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        staticcall sub_5911b7c6Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall sub_5911b7c6Address.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            staticcall sub_993832b7Address.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_121af73eAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if 100 * 10^6 * ext_call.return_data[0] and 1 > -1 / 100 * 10^6 * ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (100 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            staticcall sub_993832b7Address.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_121af73eAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if 100 * 10^6 * ext_call.return_data[0] and 10^uint8(ext_call.return_data[0]) > -1 / 100 * 10^6 * ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (100 * 10^6 * ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        staticcall sub_993832b7Address.0x70a08231 with:
                gas gas_remaining wei
               args sub_121af73eAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if 100 * 10^6 * ext_call.return_data[0] and s * t > -1 / 100 * 10^6 * ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 18
        return (100 * 10^6 * ext_call.return_data[0] * s * t / ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    staticcall sub_5911b7c6Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall sub_5911b7c6Address.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        staticcall sub_993832b7Address.0x70a08231 with:
                gas gas_remaining wei
               args sub_121af73eAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if 100 * 10^6 * ext_call.return_data[0] and 1 > -1 / 100 * 10^6 * ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if not s * t:
            revert with 0, 18
        return (100 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / s * t)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        staticcall sub_993832b7Address.0x70a08231 with:
                gas gas_remaining wei
               args sub_121af73eAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if 100 * 10^6 * ext_call.return_data[0] and 10^uint8(ext_call.return_data[0]) > -1 / 100 * 10^6 * ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if not s * t:
            revert with 0, 18
        return (100 * 10^6 * ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] / s * t)
    u = 10
    v = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    staticcall sub_993832b7Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_121af73eAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
        revert with 0, 17
    if 100 * 10^6 * ext_call.return_data[0] and u * v > -1 / 100 * 10^6 * ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if not s * t:
        revert with 0, 18
    return (100 * 10^6 * ext_call.return_data[0] * u * v / ext_call.return_data[0] / s * t)
}

function sub_01274e11(?) payable {
    if 0 == sub_5d3c5a8a:
        return sub_cacf5689
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args sub_94087e14Address, busdAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not uint8(-ext_call.return_data[31 len 1] + 18):
        if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not uint8(-ext_call.return_data[31 len 1] + 18):
            if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != busdAddress:
                if not Mask(112, 0, ext_call.return_data[0]):
                    return 0
                if Mask(112, 0, ext_call.return_data[32]) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                return (100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
            if not Mask(112, 0, ext_call.return_data[32]):
                return 0
            if Mask(112, 0, ext_call.return_data[0]) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            return (100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
            if Mask(112, 0, ext_call.return_data[32]) and 10^uint8(-ext_call.return_data[31 len 1] + 18) > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != busdAddress:
                if not Mask(112, 0, ext_call.return_data[0]):
                    return 0
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                return (100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[0]))
            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                return 0
            if Mask(112, 0, ext_call.return_data[0]) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            return (100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18))
        s = 10
        t = 1
        idx = uint8(-ext_call.return_data[31 len 1] + 18)
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != busdAddress:
            if not Mask(112, 0, ext_call.return_data[0]):
                return 0
            if Mask(112, 0, ext_call.return_data[32]) * s * t > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            return (100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]))
        if not Mask(112, 0, ext_call.return_data[32]) * s * t:
            return 0
        if Mask(112, 0, ext_call.return_data[0]) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]) * s * t:
            revert with 0, 18
        return (100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t)
    if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
        if Mask(112, 0, ext_call.return_data[0]) and 10^uint8(-ext_call.return_data[31 len 1] + 18) > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not uint8(-ext_call.return_data[31 len 1] + 18):
            if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != busdAddress:
                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                    return 0
                if Mask(112, 0, ext_call.return_data[32]) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18))
            if not Mask(112, 0, ext_call.return_data[32]):
                return 0
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            return (100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
            if Mask(112, 0, ext_call.return_data[32]) and 10^uint8(-ext_call.return_data[31 len 1] + 18) > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != busdAddress:
                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                    return 0
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18))
            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                return 0
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            return (100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18))
        s = 10
        t = 1
        idx = uint8(-ext_call.return_data[31 len 1] + 18)
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != busdAddress:
            if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                return 0
            if Mask(112, 0, ext_call.return_data[32]) * s * t > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            return (100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18))
        if not Mask(112, 0, ext_call.return_data[32]) * s * t:
            return 0
        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]) * s * t:
            revert with 0, 18
        return (100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[32]) * s * t)
    s = 10
    t = 1
    idx = uint8(-ext_call.return_data[31 len 1] + 18)
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not uint8(-ext_call.return_data[31 len 1] + 18):
        if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != busdAddress:
            if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                return 0
            if Mask(112, 0, ext_call.return_data[32]) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                revert with 0, 18
            return (100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * s * t)
        if not Mask(112, 0, ext_call.return_data[32]):
            return 0
        if Mask(112, 0, ext_call.return_data[0]) * s * t > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        return (100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]))
    if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
        if Mask(112, 0, ext_call.return_data[32]) and 10^uint8(-ext_call.return_data[31 len 1] + 18) > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != busdAddress:
            if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                return 0
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                revert with 0, 18
            return (100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[0]) * s * t)
        if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
            return 0
        if Mask(112, 0, ext_call.return_data[0]) * s * t > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
            revert with 0, 18
        return (100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18))
    u = 10
    v = 1
    idx = uint8(-ext_call.return_data[31 len 1] + 18)
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) and u * v > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != busdAddress:
        if not Mask(112, 0, ext_call.return_data[0]) * s * t:
            return 0
        if Mask(112, 0, ext_call.return_data[32]) * u * v > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[0]) * s * t:
            revert with 0, 18
        return (100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * u * v / Mask(112, 0, ext_call.return_data[0]) * s * t)
    if not Mask(112, 0, ext_call.return_data[32]) * u * v:
        return 0
    if Mask(112, 0, ext_call.return_data[0]) * s * t > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
        revert with 0, 17
    if not Mask(112, 0, ext_call.return_data[32]) * u * v:
        revert with 0, 18
    return (100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * u * v)
}

function sub_8db11377(?) payable {
    if 0 == sub_f63d0c5a:
        return sub_df4a6fc3
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args sub_993832b7Address, busdAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not uint8(-ext_call.return_data[31 len 1] + 18):
        if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not uint8(-ext_call.return_data[31 len 1] + 18):
            if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != busdAddress:
                if not Mask(112, 0, ext_call.return_data[0]):
                    return 0
                if Mask(112, 0, ext_call.return_data[32]) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                return (100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
            if not Mask(112, 0, ext_call.return_data[32]):
                return 0
            if Mask(112, 0, ext_call.return_data[0]) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            return (100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
            if Mask(112, 0, ext_call.return_data[32]) and 10^uint8(-ext_call.return_data[31 len 1] + 18) > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != busdAddress:
                if not Mask(112, 0, ext_call.return_data[0]):
                    return 0
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                return (100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[0]))
            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                return 0
            if Mask(112, 0, ext_call.return_data[0]) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            return (100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18))
        s = 10
        t = 1
        idx = uint8(-ext_call.return_data[31 len 1] + 18)
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != busdAddress:
            if not Mask(112, 0, ext_call.return_data[0]):
                return 0
            if Mask(112, 0, ext_call.return_data[32]) * s * t > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            return (100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]))
        if not Mask(112, 0, ext_call.return_data[32]) * s * t:
            return 0
        if Mask(112, 0, ext_call.return_data[0]) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]) * s * t:
            revert with 0, 18
        return (100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t)
    if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
        if Mask(112, 0, ext_call.return_data[0]) and 10^uint8(-ext_call.return_data[31 len 1] + 18) > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not uint8(-ext_call.return_data[31 len 1] + 18):
            if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != busdAddress:
                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                    return 0
                if Mask(112, 0, ext_call.return_data[32]) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18))
            if not Mask(112, 0, ext_call.return_data[32]):
                return 0
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            return (100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
            if Mask(112, 0, ext_call.return_data[32]) and 10^uint8(-ext_call.return_data[31 len 1] + 18) > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != busdAddress:
                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                    return 0
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18))
            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                return 0
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            return (100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18))
        s = 10
        t = 1
        idx = uint8(-ext_call.return_data[31 len 1] + 18)
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != busdAddress:
            if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                return 0
            if Mask(112, 0, ext_call.return_data[32]) * s * t > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            return (100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18))
        if not Mask(112, 0, ext_call.return_data[32]) * s * t:
            return 0
        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]) * s * t:
            revert with 0, 18
        return (100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[32]) * s * t)
    s = 10
    t = 1
    idx = uint8(-ext_call.return_data[31 len 1] + 18)
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not uint8(-ext_call.return_data[31 len 1] + 18):
        if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != busdAddress:
            if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                return 0
            if Mask(112, 0, ext_call.return_data[32]) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                revert with 0, 18
            return (100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * s * t)
        if not Mask(112, 0, ext_call.return_data[32]):
            return 0
        if Mask(112, 0, ext_call.return_data[0]) * s * t > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        return (100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]))
    if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
        if Mask(112, 0, ext_call.return_data[32]) and 10^uint8(-ext_call.return_data[31 len 1] + 18) > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != busdAddress:
            if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                return 0
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                revert with 0, 18
            return (100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[0]) * s * t)
        if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
            return 0
        if Mask(112, 0, ext_call.return_data[0]) * s * t > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
            revert with 0, 18
        return (100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18))
    u = 10
    v = 1
    idx = uint8(-ext_call.return_data[31 len 1] + 18)
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) and u * v > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != busdAddress:
        if not Mask(112, 0, ext_call.return_data[0]) * s * t:
            return 0
        if Mask(112, 0, ext_call.return_data[32]) * u * v > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[0]) * s * t:
            revert with 0, 18
        return (100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * u * v / Mask(112, 0, ext_call.return_data[0]) * s * t)
    if not Mask(112, 0, ext_call.return_data[32]) * u * v:
        return 0
    if Mask(112, 0, ext_call.return_data[0]) * s * t > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
        revert with 0, 17
    if not Mask(112, 0, ext_call.return_data[32]) * u * v:
        revert with 0, 18
    return (100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * u * v)
}

function sub_efb9694e(?) payable {
    if 0 == sub_5d3c5a8a:
        if not sub_cacf5689:
            revert with 0, 18
        return (10^16 / sub_cacf5689)
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args sub_94087e14Address, busdAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not uint8(-ext_call.return_data[31 len 1] + 18):
        if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not uint8(-ext_call.return_data[31 len 1] + 18):
            if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != busdAddress:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[32]) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                if not 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                return (10^16 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[0]) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if not 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            return (10^16 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
            if Mask(112, 0, ext_call.return_data[32]) and 10^uint8(-ext_call.return_data[31 len 1] + 18) > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != busdAddress:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                if not 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                return (10^16 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[0]))
            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[0]) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            if not 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            return (10^16 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18))
        s = 10
        t = 1
        idx = uint8(-ext_call.return_data[31 len 1] + 18)
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != busdAddress:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[32]) * s * t > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            if not 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            return (10^16 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]))
        if not Mask(112, 0, ext_call.return_data[32]) * s * t:
            revert with 0, 18
        if Mask(112, 0, ext_call.return_data[0]) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]) * s * t:
            revert with 0, 18
        if not 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t:
            revert with 0, 18
        return (10^16 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t)
    if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
        if Mask(112, 0, ext_call.return_data[0]) and 10^uint8(-ext_call.return_data[31 len 1] + 18) > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not uint8(-ext_call.return_data[31 len 1] + 18):
            if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != busdAddress:
                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[32]) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                if not 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (10^16 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18))
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if not 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            return (10^16 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
            if Mask(112, 0, ext_call.return_data[32]) and 10^uint8(-ext_call.return_data[31 len 1] + 18) > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != busdAddress:
                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                if not 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (10^16 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18))
            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            if not 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            return (10^16 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18))
        s = 10
        t = 1
        idx = uint8(-ext_call.return_data[31 len 1] + 18)
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != busdAddress:
            if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[32]) * s * t > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            if not 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            return (10^16 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18))
        if not Mask(112, 0, ext_call.return_data[32]) * s * t:
            revert with 0, 18
        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]) * s * t:
            revert with 0, 18
        if not 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[32]) * s * t:
            revert with 0, 18
        return (10^16 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[32]) * s * t)
    s = 10
    t = 1
    idx = uint8(-ext_call.return_data[31 len 1] + 18)
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not uint8(-ext_call.return_data[31 len 1] + 18):
        if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != busdAddress:
            if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[32]) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                revert with 0, 18
            if not 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * s * t:
                revert with 0, 18
            return (10^16 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * s * t)
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if Mask(112, 0, ext_call.return_data[0]) * s * t > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if not 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        return (10^16 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]))
    if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
        if Mask(112, 0, ext_call.return_data[32]) and 10^uint8(-ext_call.return_data[31 len 1] + 18) > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != busdAddress:
            if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                revert with 0, 18
            if not 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[0]) * s * t:
                revert with 0, 18
            return (10^16 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / Mask(112, 0, ext_call.return_data[0]) * s * t)
        if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
            revert with 0, 18
        if Mask(112, 0, ext_call.return_data[0]) * s * t > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
            revert with 0, 18
        if not 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18):
            revert with 0, 18
        return (10^16 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-uint8(ext_call.return_data[0]) + 18))
    u = 10
    v = 1
    idx = uint8(-ext_call.return_data[31 len 1] + 18)
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) and u * v > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != busdAddress:
        if not Mask(112, 0, ext_call.return_data[0]) * s * t:
            revert with 0, 18
        if Mask(112, 0, ext_call.return_data[32]) * u * v > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[0]) * s * t:
            revert with 0, 18
        if not 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * u * v / Mask(112, 0, ext_call.return_data[0]) * s * t:
            revert with 0, 18
        return (10^16 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * u * v / Mask(112, 0, ext_call.return_data[0]) * s * t)
    if not Mask(112, 0, ext_call.return_data[32]) * u * v:
        revert with 0, 18
    if Mask(112, 0, ext_call.return_data[0]) * s * t > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
        revert with 0, 17
    if not Mask(112, 0, ext_call.return_data[32]) * u * v:
        revert with 0, 18
    if not 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * u * v:
        revert with 0, 18
    return (10^16 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * u * v)
}



}
