contract main {




// =====================  Runtime code  =====================


#
#  - sub_927b1bb6(?)
#
const sub_3ee8f988(?) = 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1

const timeStaking = 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9

const sub_7aad2ebd(?) = 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318

const sub_c13b6b28(?) = 0x694738e0a438d90487b4a549b201142c1a97b556

const sub_c56214ad(?) = 0xa184ae1a71ecad20e822cb965b99c287590c4ffe

const TIME = address(code.data[18682 len 32])

const MEMO = 0x136acd46c134e8269052c62a67042d6bdedde3c9


address owner;
address managerAddress;
uint256 sub_c978b3a7;
uint256 sub_f18a33a7;
uint256 sub_b4d077cb;
uint256 sub_88bde76d;
address sub_cb6ef116Address;
uint256 sub_7d57c52f;
uint256 sub_5b6444fe;
uint256 sub_795b8d0a;

function sub_334d22d5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_334d22d5.length
    return sub_334d22d5[arg1]
}

function manager() payable {
    return managerAddress
}

function sub_55e8a6d1(?) payable {
    return sub_ef92d526.length
}

function sub_5b6444fe(?) payable {
    return sub_5b6444fe
}

function sub_795b8d0a(?) payable {
    return sub_795b8d0a
}

function sub_7d57c52f(?) payable {
    return sub_7d57c52f
}

function sub_88bde76d(?) payable {
    return sub_88bde76d
}

function sub_8bb3ac65(?) payable {
    return sub_334d22d5.length
}

function owner() payable {
    return owner
}

function sub_b4d077cb(?) payable {
    return sub_b4d077cb
}

function sub_c978b3a7(?) payable {
    return sub_c978b3a7
}

function sub_cb6ef116(?) payable {
    return sub_cb6ef116Address
}

function sub_ef92d526(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_ef92d526.length
    return sub_ef92d526[arg1]
}

function sub_f18a33a7(?) payable {
    return sub_f18a33a7
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

function renounceManagement() payable {
    if managerAddress != msg.sender:
        revert with 0, 'only manager'
    emit ManagementTransferred(managerAddress, 0);
    managerAddress = 0
}

function sub_8dd6c46b(?) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0, 'only manager'
    if sub_88bde76d < arg1:
        revert with 0, 17
    sub_88bde76d -= arg1
}

function sub_e7e7dcb2(?) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0, 'only manager'
    if sub_b4d077cb < arg1:
        revert with 0, 17
    sub_b4d077cb -= arg1
}

function sub_bc47d617(?) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0, 'only manager'
    if arg1 > 100:
        revert with 0, 'sanity check'
    sub_7d57c52f = arg1
}

function sub_fe2790a3(?) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0, 'only manager'
    if arg1 > 100:
        revert with 0, 'sanity check'
    sub_5b6444fe = arg1
}

function sub_e3cc77c5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if managerAddress != msg.sender:
        revert with 0, 'only manager'
    require address(arg1)
    sub_cb6ef116Address = address(arg1)
}

function transferManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if managerAddress != msg.sender:
        revert with 0, 'only manager'
    if not arg1:
        revert with 0, 'zero bad'
    emit ManagementTransferred(managerAddress, arg1);
    managerAddress = arg1
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

function sub_6041a484(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if managerAddress != msg.sender:
        revert with 0, 'only manager'
    require ext_code.size(address(arg1))
    call address(arg1).recoverERC20(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg2), owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function totalTime() payable {
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(code.data[18682 len 32])
    staticcall code.data[18682 len 32].0x70a08231 with:
            gas gas_remaining wei
           args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if 2 * ext_call.return_data[0] > !sub_b4d077cb:
        revert with 0, 17
    if (2 * ext_call.return_data[0]) + sub_b4d077cb > !sub_88bde76d:
        revert with 0, 17
    return ((2 * ext_call.return_data[0]) + sub_b4d077cb + sub_88bde76d)
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    create contract with 0 wei
                    code: code.data[15812 len 2870], arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_334d22d5.length++
    sub_334d22d5[sub_334d22d5.length] = address(create.new_address)
    require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
    call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1, address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(create.new_address))
    call address(create.new_address).toggleDepositLock() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_b4d077cb > !arg1:
        revert with 0, 17
    sub_b4d077cb += arg1
}

function sub_0e4ee2f9(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if managerAddress != msg.sender:
        revert with 0, 'only manager'
    mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
    require ext_code.size(code.data[18682 len 32])
    staticcall code.data[18682 len 32].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(32 * ('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _72 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 128] >= sub_334d22d5.length:
            revert with 0, 50
        mem[0] = 6
        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97] = 0xf3d86e4a00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_334d22d5[_72])
        call sub_334d22d5[_72].forfeit() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(code.data[18682 len 32])
    staticcall code.data[18682 len 32].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if sub_b4d077cb < 0:
        if sub_b4d077cb < sub_b4d077cb:
            revert with 0, 17
        sub_b4d077cb = 0
    require ext_code.size(code.data[18682 len 32])
    call code.data[18682 len 32].0xa9059cbb with:
         gas gas_remaining wei
        args owner, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_85e78423(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if managerAddress != msg.sender:
        revert with 0, 'only manager'
    mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
    require ext_code.size(code.data[18682 len 32])
    staticcall code.data[18682 len 32].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(32 * ('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        if mem[(32 * idx) + 128] >= sub_ef92d526.length:
            revert with 0, 50
        mem[0] = 7
        require ext_code.size(sub_ef92d526[mem[(32 * idx) + 128]])
        staticcall sub_ef92d526[mem[(32 * idx) + 128]].0x13601816 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _102 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_102] < 10000:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_ef92d526.length:
            revert with 0, 50
        mem[mem[64]] = 0xbe040fb000000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_ef92d526[idx])
        call sub_ef92d526[idx].redeem() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= mem[96]:
            revert with 0, 50
        if mem[(32 * idx) + 128] >= sub_ef92d526.length:
            revert with 0, 50
        mem[0] = 7
        require ext_code.size(sub_ef92d526[mem[(32 * idx) + 128]])
        staticcall sub_ef92d526[mem[(32 * idx) + 128]].0xe3d7070e with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _116 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_116]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_116]
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(code.data[18682 len 32])
    staticcall code.data[18682 len 32].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _97 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _101 = mem[_97]
    if mem[_97] < ext_call.return_data[0]:
        revert with 0, 17
    if sub_88bde76d >= mem[_97] - ext_call.return_data[0]:
        sub_88bde76d = sub_88bde76d - mem[_97] + ext_call.return_data[0]
        mem[mem[64] + 4] = owner
        mem[mem[64] + 36] = _101 - ext_call.return_data[0]
        require ext_code.size(code.data[18682 len 32])
        call code.data[18682 len 32].0xa9059cbb with:
             gas gas_remaining wei
            args owner, _101 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _123 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_123] == bool(mem[_123])
    else:
        if sub_88bde76d < sub_88bde76d:
            revert with 0, 17
        sub_88bde76d = 0
        mem[mem[64] + 4] = owner
        mem[mem[64] + 36] = _101 - ext_call.return_data[0]
        require ext_code.size(code.data[18682 len 32])
        call code.data[18682 len 32].0xa9059cbb with:
             gas gas_remaining wei
            args owner, _101 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _122 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_122] == bool(mem[_122])
}

function sub_3ead9f34(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if managerAddress != msg.sender:
        revert with 0, 'only manager'
    mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(32 * ('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _82 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 128] >= sub_334d22d5.length:
            revert with 0, 50
        mem[0] = 6
        mem[mem[64] + 4] = sub_334d22d5[mem[(32 * idx) + 128]]
        require ext_code.size(sub_cb6ef116Address)
        staticcall sub_cb6ef116Address.0xef488c89 with:
                gas gas_remaining wei
               args sub_334d22d5[_82]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _88 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_88] == bool(mem[_88])
        if not mem[_88]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 0, 50
        _91 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 128] >= sub_334d22d5.length:
            revert with 0, 50
        mem[mem[64]] = 0x4e71d92d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_334d22d5[_91])
        call sub_334d22d5[_91].claim() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= mem[96]:
            revert with 0, 50
        if mem[(32 * idx) + 128] >= sub_334d22d5.length:
            revert with 0, 50
        mem[0] = 6
        require ext_code.size(sub_334d22d5[mem[(32 * idx) + 128]])
        staticcall sub_334d22d5[mem[(32 * idx) + 128]].0xe3d7070e with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _104 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_104]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_104]
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _83 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _87 = mem[_83]
    if mem[_83] < ext_call.return_data[0]:
        revert with 0, 17
    if sub_b4d077cb >= s:
        sub_b4d077cb -= s
        mem[mem[64] + 4] = owner
        mem[mem[64] + 36] = _87 - ext_call.return_data[0]
        require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
        call 0x136acd46c134e8269052c62a67042d6bdedde3c9.0xa9059cbb with:
             gas gas_remaining wei
            args owner, _87 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _106 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_106] == bool(mem[_106])
    else:
        if sub_b4d077cb < sub_b4d077cb:
            revert with 0, 17
        sub_b4d077cb = 0
        mem[mem[64] + 4] = owner
        mem[mem[64] + 36] = _87 - ext_call.return_data[0]
        require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
        call 0x136acd46c134e8269052c62a67042d6bdedde3c9.0xa9059cbb with:
             gas gas_remaining wei
            args owner, _87 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _105 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_105] == bool(mem[_105])
}

function sub_1c623d4c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(code.data[18682 len 32])
    staticcall code.data[18682 len 32].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if var39001 >= sub_7d57c52f:
        if sub_c978b3a7 > !var39001:
            revert with 0, 17
        sub_c978b3a7 += var39001
        require ext_code.size(code.data[18682 len 32])
        staticcall code.data[18682 len 32].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if sub_b4d077cb < 0:
            if sub_b4d077cb < sub_b4d077cb:
                revert with 0, 17
            sub_b4d077cb = 0
        require ext_code.size(code.data[18682 len 32])
        call code.data[18682 len 32].0xa9059cbb with:
             gas gas_remaining wei
            args owner, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        return 0
    if sub_c978b3a7 > !var43002:
        revert with 0, 17
    idx = var47001 < sub_334d22d5.length
    s = var47003
    while idx:
        mem[mem[64] + 4] = this.address
        require ext_code.size(code.data[18682 len 32])
        staticcall code.data[18682 len 32].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _375 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_375] < ext_call.return_data[0]:
            revert with 0, 17
        if sub_c978b3a7 > !s:
            revert with 0, 17
        if mem[_375] - ext_call.return_data[0] < arg1:
            if sub_c978b3a7 + s >= sub_334d22d5.length:
                revert with 0, 50
            mem[0] = 6
            mem[mem[64]] = 0xf3d86e4a00000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor[('name', 'sub_334d22d5', 6) + stor2 + s])
            call stor[('name', 'sub_334d22d5', 6) + stor2 + s].forfeit() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s > -2:
                revert with 0, 17
            if s + 1 >= sub_7d57c52f:
                idx = s + 1 < sub_7d57c52f
                s = s + 1
                continue 
            if sub_c978b3a7 > !(s + 1):
                revert with 0, 17
            idx = sub_c978b3a7 + s + 1 < sub_334d22d5.length
            s = s + 1
            continue 
        sub_c978b3a7 += s
        mem[mem[64] + 4] = this.address
        require ext_code.size(code.data[18682 len 32])
        staticcall code.data[18682 len 32].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _390 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _391 = mem[_390]
        if mem[_390] < ext_call.return_data[0]:
            revert with 0, 17
        if sub_b4d077cb >= mem[_390] - ext_call.return_data[0]:
            sub_b4d077cb = sub_b4d077cb - mem[_390] + ext_call.return_data[0]
            mem[mem[64] + 4] = owner
            mem[mem[64] + 36] = _391 - ext_call.return_data[0]
            require ext_code.size(code.data[18682 len 32])
            call code.data[18682 len 32].0xa9059cbb with:
                 gas gas_remaining wei
                args owner, _391 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _417 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_417] == bool(mem[_417])
        else:
            if sub_b4d077cb < sub_b4d077cb:
                revert with 0, 17
            sub_b4d077cb = 0
            mem[mem[64] + 4] = owner
            mem[mem[64] + 36] = _391 - ext_call.return_data[0]
            require ext_code.size(code.data[18682 len 32])
            call code.data[18682 len 32].0xa9059cbb with:
                 gas gas_remaining wei
                args owner, _391 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _416 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_416] == bool(mem[_416])
        return (_391 - ext_call.return_data[0])
    if sub_c978b3a7 > !s:
        revert with 0, 17
    sub_c978b3a7 += s
    mem[mem[64] + 4] = this.address
    require ext_code.size(code.data[18682 len 32])
    staticcall code.data[18682 len 32].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _381 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _382 = mem[_381]
    if mem[_381] < ext_call.return_data[0]:
        revert with 0, 17
    if sub_b4d077cb >= mem[_381] - ext_call.return_data[0]:
        sub_b4d077cb = sub_b4d077cb - mem[_381] + ext_call.return_data[0]
        mem[mem[64] + 4] = owner
        mem[mem[64] + 36] = _382 - ext_call.return_data[0]
        require ext_code.size(code.data[18682 len 32])
        call code.data[18682 len 32].0xa9059cbb with:
             gas gas_remaining wei
            args owner, _382 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _401 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_401] == bool(mem[_401])
    else:
        if sub_b4d077cb < sub_b4d077cb:
            revert with 0, 17
        sub_b4d077cb = 0
        mem[mem[64] + 4] = owner
        mem[mem[64] + 36] = _382 - ext_call.return_data[0]
        require ext_code.size(code.data[18682 len 32])
        call code.data[18682 len 32].0xa9059cbb with:
             gas gas_remaining wei
            args owner, _382 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _400 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_400] == bool(mem[_400])
    return (_382 - ext_call.return_data[0])
}

function sub_90f78379(?) payable {
    if managerAddress != msg.sender:
        revert with 0, 'only manager'
    mem[100] = this.address
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if var50002 >= sub_7d57c52f:
        if sub_c978b3a7 > !var50002:
            revert with 0, 17
        sub_c978b3a7 += var50002
        require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
        staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if sub_b4d077cb < 0:
            if sub_b4d077cb < sub_b4d077cb:
                revert with 0, 17
            sub_b4d077cb = 0
        require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
        call 0x136acd46c134e8269052c62a67042d6bdedde3c9.0xa9059cbb with:
             gas gas_remaining wei
            args owner, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if var54001 > !sub_c978b3a7:
            revert with 0, 17
        idx = var58001 < sub_334d22d5.length
        s = var58003
        t = var58004
        while idx:
            if sub_c978b3a7 > !t:
                revert with 0, 17
            if sub_c978b3a7 + t >= sub_334d22d5.length:
                revert with 0, 50
            mem[0] = 6
            mem[mem[64] + 4] = stor[('name', 'sub_334d22d5', 6) + stor2 + t]
            require ext_code.size(sub_cb6ef116Address)
            staticcall sub_cb6ef116Address.0xef488c89 with:
                    gas gas_remaining wei
                   args stor[('name', 'sub_334d22d5', 6) + stor2 + t]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _259 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_259] == bool(mem[_259])
            if sub_c978b3a7 > !t:
                revert with 0, 17
            if mem[_259]:
                if sub_c978b3a7 + t >= sub_334d22d5.length:
                    revert with 0, 50
                require ext_code.size(stor[('name', 'sub_334d22d5', 6) + stor2 + t])
                call stor[('name', 'sub_334d22d5', 6) + stor2 + t].claim() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_c978b3a7 > !t:
                    revert with 0, 17
                if sub_c978b3a7 + t >= sub_334d22d5.length:
                    revert with 0, 50
                mem[0] = 6
                require ext_code.size(stor[('name', 'sub_334d22d5', 6) + stor2 + t])
                staticcall stor[('name', 'sub_334d22d5', 6) + stor2 + t].0xe3d7070e with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _278 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_278]:
                    revert with 0, 17
                if t > -2:
                    revert with 0, 17
                if t + 1 >= sub_7d57c52f:
                    idx = t + 1 < sub_7d57c52f
                    s = s + mem[_278]
                    t = t + 1
                    continue 
                if t + 1 > !sub_c978b3a7:
                    revert with 0, 17
                idx = t + sub_c978b3a7 + 1 < sub_334d22d5.length
                s = s + mem[_278]
                t = t + 1
                continue 
            sub_c978b3a7 += t
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
            staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _267 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _268 = mem[_267]
            if mem[_267] < ext_call.return_data[0]:
                revert with 0, 17
            if sub_b4d077cb >= mem[_267] - ext_call.return_data[0]:
                sub_b4d077cb = sub_b4d077cb - mem[_267] + ext_call.return_data[0]
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = _268 - ext_call.return_data[0]
                require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
                call 0x136acd46c134e8269052c62a67042d6bdedde3c9.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, _268 - ext_call.return_data[0]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _287 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_287] == bool(mem[_287])
            else:
                if sub_b4d077cb < sub_b4d077cb:
                    revert with 0, 17
                sub_b4d077cb = 0
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = _268 - ext_call.return_data[0]
                require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
                call 0x136acd46c134e8269052c62a67042d6bdedde3c9.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, _268 - ext_call.return_data[0]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _286 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_286] == bool(mem[_286])
        if sub_c978b3a7 > !t:
            revert with 0, 17
        sub_c978b3a7 += t
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
        staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _258 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _260 = mem[_258]
        if mem[_258] < ext_call.return_data[0]:
            revert with 0, 17
        if sub_b4d077cb >= mem[_258] - ext_call.return_data[0]:
            sub_b4d077cb = sub_b4d077cb - mem[_258] + ext_call.return_data[0]
            mem[mem[64] + 4] = owner
            mem[mem[64] + 36] = _260 - ext_call.return_data[0]
            require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
            call 0x136acd46c134e8269052c62a67042d6bdedde3c9.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, _260 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _277 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_277] == bool(mem[_277])
        else:
            if sub_b4d077cb < sub_b4d077cb:
                revert with 0, 17
            sub_b4d077cb = 0
            mem[mem[64] + 4] = owner
            mem[mem[64] + 36] = _260 - ext_call.return_data[0]
            require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
            call 0x136acd46c134e8269052c62a67042d6bdedde3c9.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, _260 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _276 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_276] == bool(mem[_276])
}

function sub_295f74c1(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if var50002 >= sub_7d57c52f:
        if sub_c978b3a7 > !var50002:
            revert with 0, 17
        sub_c978b3a7 += var50002
        require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
        staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if sub_b4d077cb < 0:
            if sub_b4d077cb < sub_b4d077cb:
                revert with 0, 17
            sub_b4d077cb = 0
        require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
        call 0x136acd46c134e8269052c62a67042d6bdedde3c9.0xa9059cbb with:
             gas gas_remaining wei
            args owner, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if var54001 > !sub_c978b3a7:
            revert with 0, 17
        idx = var58001 < sub_334d22d5.length
        s = var58003
        t = var58004
        while idx:
            if sub_c978b3a7 > !t:
                revert with 0, 17
            if sub_c978b3a7 + t >= sub_334d22d5.length:
                revert with 0, 50
            mem[0] = 6
            mem[mem[64] + 4] = stor[('name', 'sub_334d22d5', 6) + stor2 + t]
            require ext_code.size(sub_cb6ef116Address)
            staticcall sub_cb6ef116Address.0xef488c89 with:
                    gas gas_remaining wei
                   args stor[('name', 'sub_334d22d5', 6) + stor2 + t]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _259 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_259] == bool(mem[_259])
            if sub_c978b3a7 > !t:
                revert with 0, 17
            if mem[_259]:
                if sub_c978b3a7 + t >= sub_334d22d5.length:
                    revert with 0, 50
                require ext_code.size(stor[('name', 'sub_334d22d5', 6) + stor2 + t])
                call stor[('name', 'sub_334d22d5', 6) + stor2 + t].claim() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_c978b3a7 > !t:
                    revert with 0, 17
                if sub_c978b3a7 + t >= sub_334d22d5.length:
                    revert with 0, 50
                mem[0] = 6
                require ext_code.size(stor[('name', 'sub_334d22d5', 6) + stor2 + t])
                staticcall stor[('name', 'sub_334d22d5', 6) + stor2 + t].0xe3d7070e with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _278 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_278]:
                    revert with 0, 17
                if t > -2:
                    revert with 0, 17
                if t + 1 >= sub_7d57c52f:
                    idx = t + 1 < sub_7d57c52f
                    s = s + mem[_278]
                    t = t + 1
                    continue 
                if t + 1 > !sub_c978b3a7:
                    revert with 0, 17
                idx = t + sub_c978b3a7 + 1 < sub_334d22d5.length
                s = s + mem[_278]
                t = t + 1
                continue 
            sub_c978b3a7 += t
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
            staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _267 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _268 = mem[_267]
            if mem[_267] < ext_call.return_data[0]:
                revert with 0, 17
            if sub_b4d077cb >= mem[_267] - ext_call.return_data[0]:
                sub_b4d077cb = sub_b4d077cb - mem[_267] + ext_call.return_data[0]
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = _268 - ext_call.return_data[0]
                require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
                call 0x136acd46c134e8269052c62a67042d6bdedde3c9.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, _268 - ext_call.return_data[0]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _287 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_287] == bool(mem[_287])
            else:
                if sub_b4d077cb < sub_b4d077cb:
                    revert with 0, 17
                sub_b4d077cb = 0
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = _268 - ext_call.return_data[0]
                require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
                call 0x136acd46c134e8269052c62a67042d6bdedde3c9.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, _268 - ext_call.return_data[0]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _286 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_286] == bool(mem[_286])
        if sub_c978b3a7 > !t:
            revert with 0, 17
        sub_c978b3a7 += t
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
        staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _258 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _260 = mem[_258]
        if mem[_258] < ext_call.return_data[0]:
            revert with 0, 17
        if sub_b4d077cb >= mem[_258] - ext_call.return_data[0]:
            sub_b4d077cb = sub_b4d077cb - mem[_258] + ext_call.return_data[0]
            mem[mem[64] + 4] = owner
            mem[mem[64] + 36] = _260 - ext_call.return_data[0]
            require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
            call 0x136acd46c134e8269052c62a67042d6bdedde3c9.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, _260 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _277 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_277] == bool(mem[_277])
        else:
            if sub_b4d077cb < sub_b4d077cb:
                revert with 0, 17
            sub_b4d077cb = 0
            mem[mem[64] + 4] = owner
            mem[mem[64] + 36] = _260 - ext_call.return_data[0]
            require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
            call 0x136acd46c134e8269052c62a67042d6bdedde3c9.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, _260 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _276 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_276] == bool(mem[_276])
}

function sub_04c9d0a6(?) payable {
    if managerAddress != msg.sender:
        revert with 0, 'only manager'
    mem[100] = this.address
    require ext_code.size(code.data[18682 len 32])
    staticcall code.data[18682 len 32].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if var57003 >= sub_7d57c52f:
        if sub_f18a33a7 > !var57003:
            revert with 0, 17
        sub_f18a33a7 += var57003
        require ext_code.size(code.data[18682 len 32])
        staticcall code.data[18682 len 32].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if sub_88bde76d < 0:
            if sub_88bde76d < sub_88bde76d:
                revert with 0, 17
            sub_88bde76d = 0
        require ext_code.size(code.data[18682 len 32])
        call code.data[18682 len 32].0xa9059cbb with:
             gas gas_remaining wei
            args owner, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if sub_f18a33a7 > !var61002:
            revert with 0, 17
        idx = var65001 < sub_ef92d526.length
        s = var65003
        t = var65005
        while idx:
            if sub_f18a33a7 > !t:
                revert with 0, 17
            if not s:
                sub_f18a33a7 += t
                mem[mem[64] + 4] = this.address
                require ext_code.size(code.data[18682 len 32])
                staticcall code.data[18682 len 32].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _391 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _393 = mem[_391]
                if mem[_391] < ext_call.return_data[0]:
                    revert with 0, 17
                if sub_88bde76d >= mem[_391] - ext_call.return_data[0]:
                    sub_88bde76d = sub_88bde76d - mem[_391] + ext_call.return_data[0]
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _393 - ext_call.return_data[0]
                    require ext_code.size(code.data[18682 len 32])
                    call code.data[18682 len 32].0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _393 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _422 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_422] == bool(mem[_422])
                else:
                    if sub_88bde76d < sub_88bde76d:
                        revert with 0, 17
                    sub_88bde76d = 0
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _393 - ext_call.return_data[0]
                    require ext_code.size(code.data[18682 len 32])
                    call code.data[18682 len 32].0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _393 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _421 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_421] == bool(mem[_421])
            if sub_f18a33a7 + t >= sub_ef92d526.length:
                revert with 0, 50
            if sub_f18a33a7 > !t:
                revert with 0, 17
            if sub_f18a33a7 + t >= sub_ef92d526.length:
                revert with 0, 50
            mem[0] = 7
            require ext_code.size(stor[('name', 'sub_ef92d526', 7) + stor3 + t])
            staticcall stor[('name', 'sub_ef92d526', 7) + stor3 + t].0x37f6364a with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _397 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _398 = mem[_397]
            require mem[_397] == mem[_397 + 12 len 20]
            mem[mem[64] + 4] = stor[('name', 'sub_ef92d526', 7) + stor3 + t]
            mem[mem[64] + 36] = address(_398)
            require ext_code.size(sub_cb6ef116Address)
            staticcall sub_cb6ef116Address.0x8ef969c6 with:
                    gas gas_remaining wei
                   args stor[('name', 'sub_ef92d526', 7) + stor3 + t], address(_398)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _413 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_413] == bool(mem[_413])
            if mem[_413]:
                if sub_f18a33a7 > !t:
                    revert with 0, 17
                if sub_f18a33a7 + t >= sub_ef92d526.length:
                    revert with 0, 50
                mem[0] = 7
                require ext_code.size(stor[('name', 'sub_ef92d526', 7) + stor3 + t])
                staticcall stor[('name', 'sub_ef92d526', 7) + stor3 + t].0x13601816 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _430 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_430] < 10000:
                    if t > -2:
                        revert with 0, 17
                    if t + 1 >= sub_7d57c52f:
                        idx = t + 1 < sub_7d57c52f
                        s = 0
                        t = t + 1
                        continue 
                    if sub_f18a33a7 > !(t + 1):
                        revert with 0, 17
                    idx = sub_f18a33a7 + t + 1 < sub_ef92d526.length
                    s = 0
                    t = t + 1
                    continue 
                if sub_f18a33a7 > !t:
                    revert with 0, 17
                if sub_f18a33a7 + t >= sub_ef92d526.length:
                    revert with 0, 50
                require ext_code.size(stor[('name', 'sub_ef92d526', 7) + stor3 + t])
                call stor[('name', 'sub_ef92d526', 7) + stor3 + t].redeem() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_f18a33a7 > !t:
                    revert with 0, 17
                if sub_f18a33a7 + t >= sub_ef92d526.length:
                    revert with 0, 50
                mem[0] = 7
                require ext_code.size(stor[('name', 'sub_ef92d526', 7) + stor3 + t])
                staticcall stor[('name', 'sub_ef92d526', 7) + stor3 + t].0xe3d7070e with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _438 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if 0 > !mem[_438]:
                    revert with 0, 17
            if t > -2:
                revert with 0, 17
            if t + 1 >= sub_7d57c52f:
                idx = t + 1 < sub_7d57c52f
                s = s
                t = t + 1
                continue 
            if sub_f18a33a7 > !(t + 1):
                revert with 0, 17
            idx = sub_f18a33a7 + t + 1 < sub_ef92d526.length
            s = s
            t = t + 1
            continue 
        if sub_f18a33a7 > !t:
            revert with 0, 17
        sub_f18a33a7 += t
        mem[mem[64] + 4] = this.address
        require ext_code.size(code.data[18682 len 32])
        staticcall code.data[18682 len 32].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _389 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _392 = mem[_389]
        if mem[_389] < ext_call.return_data[0]:
            revert with 0, 17
        if sub_88bde76d >= mem[_389] - ext_call.return_data[0]:
            sub_88bde76d = sub_88bde76d - mem[_389] + ext_call.return_data[0]
            mem[mem[64] + 4] = owner
            mem[mem[64] + 36] = _392 - ext_call.return_data[0]
            require ext_code.size(code.data[18682 len 32])
            call code.data[18682 len 32].0xa9059cbb with:
                 gas gas_remaining wei
                args owner, _392 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _419 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_419] == bool(mem[_419])
        else:
            if sub_88bde76d < sub_88bde76d:
                revert with 0, 17
            sub_88bde76d = 0
            mem[mem[64] + 4] = owner
            mem[mem[64] + 36] = _392 - ext_call.return_data[0]
            require ext_code.size(code.data[18682 len 32])
            call code.data[18682 len 32].0xa9059cbb with:
                 gas gas_remaining wei
                args owner, _392 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _418 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_418] == bool(mem[_418])
}

function claimBonds() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(code.data[18682 len 32])
    staticcall code.data[18682 len 32].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if var57003 >= sub_7d57c52f:
        if sub_f18a33a7 > !var57003:
            revert with 0, 17
        sub_f18a33a7 += var57003
        require ext_code.size(code.data[18682 len 32])
        staticcall code.data[18682 len 32].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if sub_88bde76d < 0:
            if sub_88bde76d < sub_88bde76d:
                revert with 0, 17
            sub_88bde76d = 0
        require ext_code.size(code.data[18682 len 32])
        call code.data[18682 len 32].0xa9059cbb with:
             gas gas_remaining wei
            args owner, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if sub_f18a33a7 > !var61002:
            revert with 0, 17
        idx = var65001 < sub_ef92d526.length
        s = var65003
        t = var65005
        while idx:
            if sub_f18a33a7 > !t:
                revert with 0, 17
            if not s:
                sub_f18a33a7 += t
                mem[mem[64] + 4] = this.address
                require ext_code.size(code.data[18682 len 32])
                staticcall code.data[18682 len 32].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _391 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _393 = mem[_391]
                if mem[_391] < ext_call.return_data[0]:
                    revert with 0, 17
                if sub_88bde76d >= mem[_391] - ext_call.return_data[0]:
                    sub_88bde76d = sub_88bde76d - mem[_391] + ext_call.return_data[0]
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _393 - ext_call.return_data[0]
                    require ext_code.size(code.data[18682 len 32])
                    call code.data[18682 len 32].0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _393 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _422 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_422] == bool(mem[_422])
                else:
                    if sub_88bde76d < sub_88bde76d:
                        revert with 0, 17
                    sub_88bde76d = 0
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _393 - ext_call.return_data[0]
                    require ext_code.size(code.data[18682 len 32])
                    call code.data[18682 len 32].0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _393 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _421 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_421] == bool(mem[_421])
            if sub_f18a33a7 + t >= sub_ef92d526.length:
                revert with 0, 50
            if sub_f18a33a7 > !t:
                revert with 0, 17
            if sub_f18a33a7 + t >= sub_ef92d526.length:
                revert with 0, 50
            mem[0] = 7
            require ext_code.size(stor[('name', 'sub_ef92d526', 7) + stor3 + t])
            staticcall stor[('name', 'sub_ef92d526', 7) + stor3 + t].0x37f6364a with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _397 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _398 = mem[_397]
            require mem[_397] == mem[_397 + 12 len 20]
            mem[mem[64] + 4] = stor[('name', 'sub_ef92d526', 7) + stor3 + t]
            mem[mem[64] + 36] = address(_398)
            require ext_code.size(sub_cb6ef116Address)
            staticcall sub_cb6ef116Address.0x8ef969c6 with:
                    gas gas_remaining wei
                   args stor[('name', 'sub_ef92d526', 7) + stor3 + t], address(_398)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _413 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_413] == bool(mem[_413])
            if mem[_413]:
                if sub_f18a33a7 > !t:
                    revert with 0, 17
                if sub_f18a33a7 + t >= sub_ef92d526.length:
                    revert with 0, 50
                mem[0] = 7
                require ext_code.size(stor[('name', 'sub_ef92d526', 7) + stor3 + t])
                staticcall stor[('name', 'sub_ef92d526', 7) + stor3 + t].0x13601816 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _430 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_430] < 10000:
                    if t > -2:
                        revert with 0, 17
                    if t + 1 >= sub_7d57c52f:
                        idx = t + 1 < sub_7d57c52f
                        s = 0
                        t = t + 1
                        continue 
                    if sub_f18a33a7 > !(t + 1):
                        revert with 0, 17
                    idx = sub_f18a33a7 + t + 1 < sub_ef92d526.length
                    s = 0
                    t = t + 1
                    continue 
                if sub_f18a33a7 > !t:
                    revert with 0, 17
                if sub_f18a33a7 + t >= sub_ef92d526.length:
                    revert with 0, 50
                require ext_code.size(stor[('name', 'sub_ef92d526', 7) + stor3 + t])
                call stor[('name', 'sub_ef92d526', 7) + stor3 + t].redeem() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_f18a33a7 > !t:
                    revert with 0, 17
                if sub_f18a33a7 + t >= sub_ef92d526.length:
                    revert with 0, 50
                mem[0] = 7
                require ext_code.size(stor[('name', 'sub_ef92d526', 7) + stor3 + t])
                staticcall stor[('name', 'sub_ef92d526', 7) + stor3 + t].0xe3d7070e with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _438 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if 0 > !mem[_438]:
                    revert with 0, 17
            if t > -2:
                revert with 0, 17
            if t + 1 >= sub_7d57c52f:
                idx = t + 1 < sub_7d57c52f
                s = s
                t = t + 1
                continue 
            if sub_f18a33a7 > !(t + 1):
                revert with 0, 17
            idx = sub_f18a33a7 + t + 1 < sub_ef92d526.length
            s = s
            t = t + 1
            continue 
        if sub_f18a33a7 > !t:
            revert with 0, 17
        sub_f18a33a7 += t
        mem[mem[64] + 4] = this.address
        require ext_code.size(code.data[18682 len 32])
        staticcall code.data[18682 len 32].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _389 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _392 = mem[_389]
        if mem[_389] < ext_call.return_data[0]:
            revert with 0, 17
        if sub_88bde76d >= mem[_389] - ext_call.return_data[0]:
            sub_88bde76d = sub_88bde76d - mem[_389] + ext_call.return_data[0]
            mem[mem[64] + 4] = owner
            mem[mem[64] + 36] = _392 - ext_call.return_data[0]
            require ext_code.size(code.data[18682 len 32])
            call code.data[18682 len 32].0xa9059cbb with:
                 gas gas_remaining wei
                args owner, _392 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _419 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_419] == bool(mem[_419])
        else:
            if sub_88bde76d < sub_88bde76d:
                revert with 0, 17
            sub_88bde76d = 0
            mem[mem[64] + 4] = owner
            mem[mem[64] + 36] = _392 - ext_call.return_data[0]
            require ext_code.size(code.data[18682 len 32])
            call code.data[18682 len 32].0xa9059cbb with:
                 gas gas_remaining wei
                args owner, _392 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _418 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_418] == bool(mem[_418])
}



}
