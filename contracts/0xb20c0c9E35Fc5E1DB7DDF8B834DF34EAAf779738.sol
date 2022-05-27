contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 salt;
address sub_63ae7afeAddress;
address signerAddress;
address sub_6c1049faAddress;
address sub_7c9fad82Address;
uint256 stor106;
uint256 stor107;
uint256 stor108;
uint256 sub_a7362012;
uint256 sub_e46de344;
uint256 sub_111bdcf0;

function sub_111bdcf0(?) {
    return sub_111bdcf0
}

function signer() {
    return signerAddress
}

function sub_63ae7afe(?) {
    return sub_63ae7afeAddress
}

function sub_6c1049fa(?) {
    return sub_6c1049faAddress
}

function sub_7c9fad82(?) {
    return sub_7c9fad82Address
}

function owner() {
    return owner
}

function sub_a7362012(?) {
    return sub_a7362012
}

function salt() {
    return salt
}

function sub_e46de344(?) {
    return sub_e46de344
}

function _fallback() payable {
    revert
}

function rewardRatio() {
    return stor106, stor107, stor108
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_d9239934(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e46de344 = arg1
    emit 0x5d1416f3: sub_e46de344, msg.sender
}

function sub_e0053630(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a7362012 = arg1
    emit 0xc8917ea7: sub_a7362012, msg.sender
}

function sub_ebb7ec0f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_111bdcf0 = arg1
    emit 0x5bc8dfe7: sub_111bdcf0, msg.sender
}

function setSigner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    signerAddress = arg1
    emit 0xfbc6295d: msg.sender, signerAddress
}

function sub_b0a3c2f3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Cannot be zero address'
    sub_63ae7afeAddress = address(arg1)
    emit 0xa950f85c: msg.sender, sub_63ae7afeAddress
}

function sub_c329dd36(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Cannot be zero address'
    sub_6c1049faAddress = address(arg1)
    emit 0xf120e018: msg.sender, sub_6c1049faAddress
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

function sub_43ce3f5e(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 + arg3 != 100:
        revert with 0, 'Total ratios must equal to 100'
    stor106 = arg1
    stor107 = arg2
    stor108 = arg3
    emit 0xeda93bff: stor106, stor107, stor108, msg.sender
}

function sub_10ff243e(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if arg2 % 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Reward amount must be divisible by 100'
    if sub_a7362012 != msg.value:
        revert with 0, 'Not enough amount to pay fee'
    call sub_6c1049faAddress with:
       value msg.value wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed to forward fee to platform address'
    else:
        if not ext_call.success:
            revert with 0, 'Failed to forward fee to platform address'
    ('bool', 'ext_call.success')
    salt++
    create2 contract with 0 wei
                    salt: sha3(salt)
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, sub_63ae7afeAddress, 0x5af43d82803e903d91602b57fd5bf3
    if not address(create2.new_address):
        revert with 0, 'ERC1167: create2 failed'
    emit 0xcad76645: msg.sender, address(create2.new_address)
    if arg2 and stor106 > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 and stor107 > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 and stor108 > -1 / arg2:
        revert with 'NH{q', 17
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0xe91f0ed6 with:
         gas gas_remaining wei
        args signerAddress, sub_6c1049faAddress, msg.sender, address(arg1), arg2 * stor106 / 100, arg2 * stor107 / 100, arg2 * stor108 / 100, arg3, sub_111bdcf0, sub_e46de344
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
    if not arg1:
        revert with 0, 'Cannot be zero address'
    if not arg2:
        revert with 0, 'Cannot be zero address'
    if not arg3:
        revert with 0, 'Cannot be zero address'
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        sub_63ae7afeAddress = arg1
        signerAddress = arg2
        sub_6c1049faAddress = arg3
        stor106 = 40
        stor107 = 40
        stor108 = 20
        sub_7c9fad82Address = arg4
        sub_a7362012 = 20
        sub_e46de344 = 10
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            sub_63ae7afeAddress = arg1
            signerAddress = arg2
            sub_6c1049faAddress = arg3
            stor106 = 40
            stor107 = 40
            stor108 = 20
            sub_7c9fad82Address = arg4
            sub_a7362012 = 20
            sub_e46de344 = 10
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                sub_63ae7afeAddress = arg1
                signerAddress = arg2
                sub_6c1049faAddress = arg3
                stor106 = 40
                stor107 = 40
                stor108 = 20
                sub_7c9fad82Address = arg4
                sub_a7362012 = 20
                sub_e46de344 = 10
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    sub_63ae7afeAddress = arg1
                    signerAddress = arg2
                    sub_6c1049faAddress = arg3
                    stor106 = 40
                    stor107 = 40
                    stor108 = 20
                    sub_7c9fad82Address = arg4
                    sub_a7362012 = 20
                    sub_e46de344 = 10
                else:
                    Mask(248, 0, stor0.field_8) = 1
                    uint8(stor0.field_0) = 1
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    Mask(248, 0, stor0.field_8) = 0
                    Mask(248, 0, stor0.field_8) = 0
                    sub_63ae7afeAddress = arg1
                    signerAddress = arg2
                    sub_6c1049faAddress = arg3
                    stor106 = 40
                    stor107 = 40
                    stor108 = 20
                    sub_7c9fad82Address = arg4
                    sub_a7362012 = 20
                    sub_e46de344 = 10
                    Mask(248, 0, stor0.field_8) = 0
}



}
