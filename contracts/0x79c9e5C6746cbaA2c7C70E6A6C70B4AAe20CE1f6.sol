contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address sub_ef929f92Address;
address treasuryAddress;
address landAddress;
address yieldTokenAddress;
address sub_e152bb8fAddress;
mapping of uint256 sub_2d49c359;
uint256 sub_1ec1e0c8;
uint256 sub_f277e411;
uint256 sub_50bdacd6;
uint256 sub_59147001;
address sub_b3adf915Address;

function sub_1ec1e0c8(?) payable {
    return sub_1ec1e0c8
}

function sub_2d49c359(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sub_2d49c359[arg1][arg2]
}

function sub_50bdacd6(?) payable {
    return sub_50bdacd6
}

function sub_59147001(?) payable {
    return sub_59147001
}

function treasury() payable {
    return treasuryAddress
}

function yieldToken() payable {
    return yieldTokenAddress
}

function land() payable {
    return landAddress
}

function owner() payable {
    return owner
}

function sub_b3adf915(?) payable {
    return sub_b3adf915Address
}

function sub_e152bb8f(?) payable {
    return sub_e152bb8fAddress
}

function sub_ef929f92(?) payable {
    return sub_ef929f92Address
}

function sub_f277e411(?) payable {
    return sub_f277e411
}

function _fallback() payable {
    revert
}

function sub_98d3970a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return not not sub_2d49c359[arg1][arg2]
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_79e51f3f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b3adf915Address = address(arg1)
}

function updateSpeed(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f277e411 = arg2
    sub_1ec1e0c8 = arg1
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

function sub_7b93a878(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not sub_2d49c359[arg1][arg2]:
        return 0
    if block.timestamp < sub_2d49c359[arg1][arg2]:
        revert with 'NH{q', 17
    if block.timestamp - sub_2d49c359[arg1][arg2] and sub_1ec1e0c8 > -1 / block.timestamp - sub_2d49c359[arg1][arg2]:
        revert with 'NH{q', 17
    return ((block.timestamp * sub_1ec1e0c8) - (sub_2d49c359[arg1][arg2] * sub_1ec1e0c8))
}

function sub_dfdf1b4b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not sub_2d49c359[arg1][arg2]:
        return 0
    if block.timestamp < sub_2d49c359[arg1][arg2]:
        revert with 'NH{q', 17
    if block.timestamp - sub_2d49c359[arg1][arg2] and sub_f277e411 > -1 / block.timestamp - sub_2d49c359[arg1][arg2]:
        revert with 'NH{q', 17
    return ((block.timestamp * sub_f277e411) - (sub_2d49c359[arg1][arg2] * sub_f277e411))
}

function sub_33b54973(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xb6ba4663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'There is no building.'
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xb6ba4663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != sub_59147001:
        revert with 0, 'Not same building.'
    if sub_b3adf915Address != msg.sender:
        revert with 0, 'Not landConstruct.'
    if sub_2d49c359[arg1][arg2]:
        revert with 0, 'It's working.'
    sub_2d49c359[arg1][arg2] = block.timestamp
    emit 0xab5f5548: msg.sender, arg1, arg2
}

function sub_47e972fd(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(landAddress)
    staticcall landAddress.0xbb181878 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not owner of land.'
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xb6ba4663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'There is no building.'
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xb6ba4663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != sub_59147001:
        revert with 0, 'Not same building.'
    if sub_2d49c359[arg1][arg2]:
        revert with 0, 'It's working.'
    sub_2d49c359[arg1][arg2] = block.timestamp
    emit 0xab5f5548: msg.sender, arg1, arg2
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    sub_e152bb8fAddress = arg4
    landAddress = arg2
    yieldTokenAddress = arg5
    treasuryAddress = arg3
    sub_ef929f92Address = arg1
    sub_f277e411 = arg7
    sub_1ec1e0c8 = arg6
    sub_50bdacd6 = 60
    sub_59147001 = 2
}

function farm(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(landAddress)
    staticcall landAddress.0xbb181878 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not owner of land.'
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xb6ba4663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'There is no building.'
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xb6ba4663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != sub_59147001:
        revert with 0, 'Not same building.'
    if block.timestamp < sub_2d49c359[arg1][arg2]:
        revert with 'NH{q', 17
    if block.timestamp - sub_2d49c359[arg1][arg2] <= sub_50bdacd6:
        revert with 0, 'Farm too fast.'
    if not sub_2d49c359[arg1][arg2]:
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < 0:
            revert with 0, 'Treasury balance is not enough.'
    else:
        if block.timestamp < sub_2d49c359[arg1][arg2]:
            revert with 'NH{q', 17
        if block.timestamp - sub_2d49c359[arg1][arg2] and sub_f277e411 > -1 / block.timestamp - sub_2d49c359[arg1][arg2]:
            revert with 'NH{q', 17
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < (block.timestamp * sub_f277e411) - (sub_2d49c359[arg1][arg2] * sub_f277e411):
            revert with 0, 'Treasury balance is not enough.'
    if not sub_2d49c359[arg1][arg2]:
        revert with 0, 'This mine is not work.'
    if not sub_2d49c359[arg1][arg2]:
        require ext_code.size(treasuryAddress)
        call treasuryAddress.0x6e6bbb39 with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        if block.timestamp < sub_2d49c359[arg1][arg2]:
            revert with 'NH{q', 17
        if block.timestamp - sub_2d49c359[arg1][arg2] and sub_f277e411 > -1 / block.timestamp - sub_2d49c359[arg1][arg2]:
            revert with 'NH{q', 17
        require ext_code.size(treasuryAddress)
        call treasuryAddress.0x6e6bbb39 with:
             gas gas_remaining wei
            args msg.sender, (block.timestamp * sub_f277e411) - (sub_2d49c359[arg1][arg2] * sub_f277e411)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not sub_2d49c359[arg1][arg2]:
        require ext_code.size(landAddress)
        call landAddress.0xeaa6920 with:
             gas gas_remaining wei
            args 0, yieldTokenAddress, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_2d49c359[arg1][arg2] = block.timestamp
        emit 0x4d907f49: 0, msg.sender, arg1, arg2
    else:
        if block.timestamp < sub_2d49c359[arg1][arg2]:
            revert with 'NH{q', 17
        if block.timestamp - sub_2d49c359[arg1][arg2] and sub_1ec1e0c8 > -1 / block.timestamp - sub_2d49c359[arg1][arg2]:
            revert with 'NH{q', 17
        require ext_code.size(landAddress)
        call landAddress.0xeaa6920 with:
             gas gas_remaining wei
            args (block.timestamp * sub_1ec1e0c8) - (sub_2d49c359[arg1][arg2] * sub_1ec1e0c8), yieldTokenAddress, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_2d49c359[arg1][arg2] = block.timestamp
        emit 0x4d907f49: ((block.timestamp * sub_1ec1e0c8) - (sub_2d49c359[arg1][arg2] * sub_1ec1e0c8)), msg.sender, arg1, arg2
}

function sub_16833810(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + 101] = cd[4]
    require ext_code.size(landAddress)
    staticcall landAddress.0xbb181878 with:
            gas gas_remaining wei
           args cd[4]
    mem[floor32(('cd', 36).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not owner of land.'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _97 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = _97
        require ext_code.size(sub_ef929f92Address)
        staticcall sub_ef929f92Address.0xb6ba4663 with:
                gas gas_remaining wei
               args cd[4], _97
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _106 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_106] == mem[_106]
        if not mem[_106]:
            revert with 0, 'There is no building.'
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = _97
        require ext_code.size(sub_ef929f92Address)
        staticcall sub_ef929f92Address.0xb6ba4663 with:
                gas gas_remaining wei
               args cd[4], _97
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _119 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_119] == mem[_119]
        if mem[_119] != sub_59147001:
            revert with 0, 'Not same building.'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _134 = mem[96]
    idx = 0
    while idx < _134:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _136 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(cd[4], 106)
        if sub_2d49c359[cd[4]][mem[(32 * idx) + 128]]:
            if block.timestamp < sub_2d49c359[cd[4]][mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            if block.timestamp - sub_2d49c359[cd[4]][mem[(32 * idx) + 128]] and sub_f277e411 > -1 / block.timestamp - sub_2d49c359[cd[4]][mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            if (block.timestamp * sub_f277e411) - (sub_2d49c359[cd[4]][mem[(32 * idx) + 128]] * sub_f277e411):
                if 0 > (-1 * block.timestamp * sub_f277e411) + (sub_2d49c359[cd[4]][mem[(32 * idx) + 128]] * sub_f277e411) - 1:
                    revert with 'NH{q', 17
                _146 = sha3(mem[(32 * idx) + 128], sha3(cd[4], 106))
                if not sub_2d49c359[cd[4]][mem[(32 * idx) + 128]]:
                    mem[mem[64]] = 0
                    emit 0x4d907f49: 0, msg.sender, cd[4], _136
                else:
                    if block.timestamp < sub_2d49c359[cd[4]][mem[(32 * idx) + 128]]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_2d49c359[cd[4]][mem[(32 * idx) + 128]] and sub_1ec1e0c8 > -1 / block.timestamp - sub_2d49c359[cd[4]][mem[(32 * idx) + 128]]:
                        revert with 'NH{q', 17
                    mem[mem[64]] = (block.timestamp * sub_1ec1e0c8) - (sub_2d49c359[cd[4]][mem[(32 * idx) + 128]] * sub_1ec1e0c8)
                    emit 0x4d907f49: mem[mem[64]], msg.sender, cd[4], _136
                    if 0 > (-1 * block.timestamp * sub_1ec1e0c8) + (stor[_146] * sub_1ec1e0c8) - 1:
                        revert with 'NH{q', 17
                mem[0] = _136
                mem[32] = sha3(cd[4], 106)
                sub_2d49c359[cd[4]][_136] = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        _134 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _141 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_141] == mem[_141]
    if mem[_141] < 0:
        revert with 0, 'Treasury balance is not enough.'
    require ext_code.size(treasuryAddress)
    call treasuryAddress.0x6e6bbb39 with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(landAddress)
    call landAddress.0xeaa6920 with:
         gas gas_remaining wei
        args 0, yieldTokenAddress, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2a5c490b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(landAddress)
    staticcall landAddress.0xbb181878 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not owner of land.'
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xb6ba4663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'There is no building.'
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xb6ba4663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != sub_59147001:
        revert with 0, 'Not same building.'
    if not sub_2d49c359[arg1][arg2]:
        revert with 0, 'It's not working.'
    require ext_code.size(landAddress)
    staticcall landAddress.0xbb181878 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not owner of land.'
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xb6ba4663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'There is no building.'
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xb6ba4663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != sub_59147001:
        revert with 0, 'Not same building.'
    if block.timestamp < sub_2d49c359[arg1][arg2]:
        revert with 'NH{q', 17
    if block.timestamp - sub_2d49c359[arg1][arg2] <= sub_50bdacd6:
        revert with 0, 'Farm too fast.'
    if not sub_2d49c359[arg1][arg2]:
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < 0:
            revert with 0, 'Treasury balance is not enough.'
    else:
        if block.timestamp < sub_2d49c359[arg1][arg2]:
            revert with 'NH{q', 17
        if block.timestamp - sub_2d49c359[arg1][arg2] and sub_f277e411 > -1 / block.timestamp - sub_2d49c359[arg1][arg2]:
            revert with 'NH{q', 17
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < (block.timestamp * sub_f277e411) - (sub_2d49c359[arg1][arg2] * sub_f277e411):
            revert with 0, 'Treasury balance is not enough.'
    if not sub_2d49c359[arg1][arg2]:
        revert with 0, 'This mine is not work.'
    if not sub_2d49c359[arg1][arg2]:
        require ext_code.size(treasuryAddress)
        call treasuryAddress.0x6e6bbb39 with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        if block.timestamp < sub_2d49c359[arg1][arg2]:
            revert with 'NH{q', 17
        if block.timestamp - sub_2d49c359[arg1][arg2] and sub_f277e411 > -1 / block.timestamp - sub_2d49c359[arg1][arg2]:
            revert with 'NH{q', 17
        require ext_code.size(treasuryAddress)
        call treasuryAddress.0x6e6bbb39 with:
             gas gas_remaining wei
            args msg.sender, (block.timestamp * sub_f277e411) - (sub_2d49c359[arg1][arg2] * sub_f277e411)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not sub_2d49c359[arg1][arg2]:
        require ext_code.size(landAddress)
        call landAddress.0xeaa6920 with:
             gas gas_remaining wei
            args 0, yieldTokenAddress, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_2d49c359[arg1][arg2] = block.timestamp
        emit 0x4d907f49: 0, msg.sender, arg1, arg2
    else:
        if block.timestamp < sub_2d49c359[arg1][arg2]:
            revert with 'NH{q', 17
        if block.timestamp - sub_2d49c359[arg1][arg2] and sub_1ec1e0c8 > -1 / block.timestamp - sub_2d49c359[arg1][arg2]:
            revert with 'NH{q', 17
        require ext_code.size(landAddress)
        call landAddress.0xeaa6920 with:
             gas gas_remaining wei
            args (block.timestamp * sub_1ec1e0c8) - (sub_2d49c359[arg1][arg2] * sub_1ec1e0c8), yieldTokenAddress, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_2d49c359[arg1][arg2] = block.timestamp
        emit 0x4d907f49: ((block.timestamp * sub_1ec1e0c8) - (sub_2d49c359[arg1][arg2] * sub_1ec1e0c8)), msg.sender, arg1, arg2
    sub_2d49c359[arg1][arg2] = 0
    emit 0xc10b273d: msg.sender, arg1, arg2
}



}
