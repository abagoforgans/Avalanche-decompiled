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

function initialize(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
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
    yieldTokenAddress = arg4
    treasuryAddress = arg3
    sub_ef929f92Address = arg1
    sub_f277e411 = arg6
    sub_1ec1e0c8 = arg5
    sub_50bdacd6 = 60
    sub_59147001 = 1
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
