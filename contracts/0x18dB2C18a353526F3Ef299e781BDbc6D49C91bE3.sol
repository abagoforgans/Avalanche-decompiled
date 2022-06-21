contract main {




// =====================  Runtime code  =====================


const MAX_INT = -1


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address stor0;
address owner; offset 16
address sub_40f436d9Address;
address sub_2837c409Address;
address sub_6204d334Address;
address sub_875f3a1cAddress;

function sub_2837c409(?) payable {
    return sub_2837c409Address
}

function sub_40f436d9(?) payable {
    return sub_40f436d9Address
}

function sub_6204d334(?) payable {
    return sub_6204d334Address
}

function sub_875f3a1c(?) payable {
    return sub_875f3a1cAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_31c1bf82(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_40f436d9Address)
    call sub_40f436d9Address.0x31c1bf82 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_c0d8080c(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_40f436d9Address)
    call sub_40f436d9Address.0xc0d8080c with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cf034493(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_40f436d9Address)
    call sub_40f436d9Address.0xcf034493 with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getBalanceTokens() payable {
    require ext_code.size(sub_2837c409Address)
    staticcall sub_2837c409Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6204d334Address)
    staticcall sub_6204d334Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_3dc8d5ce(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_2837c409Address)
    staticcall sub_2837c409Address.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, sub_40f436d9Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_2837c409Address)
        call sub_2837c409Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_40f436d9Address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_40f436d9Address)
    call sub_40f436d9Address.0x3dc8d5ce with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 > test266151307() or ceil32(32 * arg2.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    s = arg2 + 36
    idx = 0
    t = 128
    while idx < arg2.length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(32 * arg2.length) + 97] = 0x8293744b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg2.length) + 101] = arg1
    require ext_code.size(sub_40f436d9Address)
    call sub_40f436d9Address.0x8293744b with:
         gas gas_remaining wei
        args address(arg1), Array(len=arg2.length, data=mem[128 len 32 * arg2.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        sub_40f436d9Address = arg1
        sub_2837c409Address = arg2
        sub_6204d334Address = arg3
        sub_875f3a1cAddress = arg4
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            sub_40f436d9Address = arg1
            sub_2837c409Address = arg2
            sub_6204d334Address = arg3
            sub_875f3a1cAddress = arg4
        else:
            uint16(stor0.field_0) = 257
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            sub_40f436d9Address = arg1
            sub_2837c409Address = arg2
            sub_6204d334Address = arg3
            sub_875f3a1cAddress = arg4
            uint8(stor0.field_8) = 0
}

function withdrawTokens() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_2837c409Address)
    staticcall sub_2837c409Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_2837c409Address)
    call sub_2837c409Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor0.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_6204d334Address)
    staticcall sub_6204d334Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6204d334Address)
    call sub_6204d334Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor0.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x95dd0e2e: ext_call.return_data[0], ext_call.return_data[0]
}

function sub_4c2f6666(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    idx = 0
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _26 = mem[(32 * idx) + 128]
        mem[ceil32(32 * ('cd', 4).length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
        mem[ceil32(32 * ('cd', 4).length) + 133] = owner
        mem[ceil32(32 * ('cd', 4).length) + 165] = _26
        require ext_code.size(sub_875f3a1cAddress)
        call sub_875f3a1cAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(stor0.field_0), _26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= mem[96]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 97] = mem[(32 * idx) + 128]
        mem[ceil32(32 * ('cd', 4).length) + 129] = owner
        emit 0xbd6945e2: mem[ceil32(32 * ('cd', 4).length) + 97], address(stor0.field_0)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function deposit(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    idx = 0
    t = 128
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_875f3a1cAddress)
    staticcall sub_875f3a1cAddress.0xe985e9c5 with:
            gas gas_remaining wei
           args this.address, sub_40f436d9Address
    mem[ceil32(32 * arg1.length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(sub_875f3a1cAddress)
        call sub_875f3a1cAddress.0xa22cb465 with:
             gas gas_remaining wei
            args sub_40f436d9Address, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * arg1.length) + ceil32(return_data.size) + 97] = 0x598b8e7100000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg1.length) + ceil32(return_data.size) + 101] = 32
    require ext_code.size(sub_40f436d9Address)
    call sub_40f436d9Address.0x598b8e71 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=mem[128 len 32 * arg1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5e8dafbb(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 == uint16(arg3)
    require ext_code.size(sub_40f436d9Address)
    staticcall sub_40f436d9Address.0x969215ba with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[128] == ext_call.return_data[158 len 2]
    require ext_call.return_data[160] == ext_call.return_data[190 len 2]
    require ext_call.return_data[224] == ext_call.return_data[240 len 16]
    require ext_code.size(sub_875f3a1cAddress)
    staticcall sub_875f3a1cAddress.getDNA(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_875f3a1cAddress)
    staticcall sub_875f3a1cAddress.getDNA(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_875f3a1cAddress)
    staticcall sub_875f3a1cAddress.getDNA(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x98e4fd3 with:
            gas gas_remaining wei
           args ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x1e791de5 with:
            gas gas_remaining wei
           args arg2, ext_call.return_data[0], arg3 << 240, uint16(ext_call.return_data[128])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    return ext_call.return_data[30 len 2], ext_call.return_data[32] << 240
}

function getGameId(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    idx = 0
    s = arg1
    while idx < 5:
        require ext_code.size(sub_40f436d9Address)
        staticcall sub_40f436d9Address.0xf0344e36 with:
                gas gas_remaining wei
               args s
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _41 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        require mem[_41 + 32] == mem[_41 + 48 len 16]
        require mem[_41 + 64] == mem[_41 + 80 len 16]
        require mem[_41 + 96] == mem[_41 + 124 len 4]
        require mem[_41 + 128] == mem[_41 + 156 len 4]
        require mem[_41 + 160] == mem[_41 + 188 len 4]
        if 0 == mem[_41]:
            revert with 0, 'TEAM NULL'
        if mem[_41 + 124 len 4] == uint32(block.timestamp):
            revert with 0, 'TEAM NULL'
        require ext_code.size(sub_40f436d9Address)
        staticcall sub_40f436d9Address.0x969215ba with:
                gas gas_remaining wei
               args mem[_41]
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        require mem[_55] == mem[_55 + 12 len 20]
        require mem[_55 + 128] == mem[_55 + 158 len 2]
        require mem[_55 + 160] == mem[_55 + 190 len 2]
        require mem[_55 + 224] == mem[_55 + 240 len 16]
        if arg2 > mem[_55 + 158 len 2]:
            require ext_code.size(sub_40f436d9Address)
            staticcall sub_40f436d9Address.0x183ce75d with:
                    gas gas_remaining wei
                   args s
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _66 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            require mem[_66 + 32] == mem[_66 + 60 len 4]
            require mem[_66 + 64] == mem[_66 + 92 len 4]
            require mem[_66 + 96] == mem[_66 + 124 len 4]
            if 0 == mem[_66]:
                return s
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return 0
}

function attack(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = arg1
    while idx < 5:
        require ext_code.size(sub_40f436d9Address)
        staticcall sub_40f436d9Address.0xf0344e36 with:
                gas gas_remaining wei
               args s
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _44 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        require mem[_44 + 32] == mem[_44 + 48 len 16]
        require mem[_44 + 64] == mem[_44 + 80 len 16]
        require mem[_44 + 96] == mem[_44 + 124 len 4]
        require mem[_44 + 128] == mem[_44 + 156 len 4]
        require mem[_44 + 160] == mem[_44 + 188 len 4]
        if 0 == mem[_44]:
            revert with 0, 'TEAM NULL'
        if mem[_44 + 124 len 4] == uint32(block.timestamp):
            revert with 0, 'TEAM NULL'
        require ext_code.size(sub_40f436d9Address)
        staticcall sub_40f436d9Address.0x969215ba with:
                gas gas_remaining wei
               args mem[_44]
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _59 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        require mem[_59] == mem[_59 + 12 len 20]
        require mem[_59 + 128] == mem[_59 + 158 len 2]
        require mem[_59 + 160] == mem[_59 + 190 len 2]
        require mem[_59 + 224] == mem[_59 + 240 len 16]
        if arg3 <= mem[_59 + 158 len 2]:
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        require ext_code.size(sub_40f436d9Address)
        staticcall sub_40f436d9Address.0x183ce75d with:
                gas gas_remaining wei
               args s
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _70 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        require mem[_70 + 32] == mem[_70 + 60 len 4]
        require mem[_70 + 64] == mem[_70 + 92 len 4]
        require mem[_70 + 96] == mem[_70 + 124 len 4]
        if mem[_70] != 0:
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if not s:
            revert with 0, 'NOT GAME'
        require ext_code.size(sub_40f436d9Address)
        call sub_40f436d9Address.attack(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args s, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'NOT GAME'
}



}
