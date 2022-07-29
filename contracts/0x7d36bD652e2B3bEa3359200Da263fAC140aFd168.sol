contract main {




// =====================  Runtime code  =====================


const decimals = 16


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of uint256 sub_e4aa4f3d;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor54;
array of struct stor55;
uint256 stor101;
uint256 stor102;
mapping of uint256 nonces;
uint256 stor154;
address owner;
mapping of uint8 stor254;
uint256 stor255;
uint256 sub_4f053eea;
mapping of struct sub_74fc4e04;
mapping of uint256 sub_7e059b22;
uint256 sub_4087c5c0;
uint32 stor309;
address stakingContractAddress;
uint256 stor309;

function totalSupply() payable {
    return totalSupply
}

function sub_4087c5c0(?) payable {
    return sub_4087c5c0
}

function sub_4f053eea(?) payable {
    return sub_4f053eea
}

function sub_74fc4e04(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_74fc4e04[address(arg1)][address(arg2)].field_0
}

function sub_7e059b22(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7e059b22[arg1]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[address(arg1)]
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e4aa4f3d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e4aa4f3d[address(arg1)]
}

function sub_e7605a67(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_74fc4e04[address(arg1)][address(arg2)].field_256
}

function stakingContract() payable {
    return address(stakingContractAddress)
}

function _fallback() payable {
    revert
}

function DOMAIN_SEPARATOR() payable {
    return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_04e8d6a7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4087c5c0 = arg1
}

function setStakingAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stakingContractAddress) = arg1
}

function sub_421def1c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 10^18:
        revert with 0, 'must be beetwen 0 and 1e18'
    sub_4f053eea = arg1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_e4aa4f3d[address(arg1)] < sub_7e059b22[address(arg1)]:
        revert with 0, 17
    return (sub_e4aa4f3d[address(arg1)] - sub_7e059b22[address(arg1)])
}

function sub_668c2e47(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor254[address(arg1)] = uint8(bool(arg2))
    emit 0xa366e4d9: bool(arg2), address(arg1)
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor254[msg.sender]:
        revert with 0, 'Caller is not privileged'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if sub_e4aa4f3d[address(arg1)] > !arg2:
        revert with 0, 17
    sub_e4aa4f3d[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor254[msg.sender]:
        revert with 0, 'Caller is not privileged'
    if sub_e4aa4f3d[address(arg1)] < sub_7e059b22[address(arg1)]:
        revert with 0, 17
    if sub_e4aa4f3d[address(arg1)] - sub_7e059b22[address(arg1)] < arg2:
        revert with 0, 'exceeds uncollaterized balance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if sub_e4aa4f3d[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    sub_e4aa4f3d[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function sub_c092997c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(address(stakingContractAddress))
    staticcall address(stakingContractAddress).0x2997717b with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10^18 < arg2:
        revert with 0, 17
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not -arg2 + 10^18:
        revert with 0, 18
    if 10^18 < arg2:
        revert with 0, 17
    if 10^18 * ext_call.return_data[0] / -arg2 + 10^18 and -arg2 + 10^18 > -1 / 10^18 * ext_call.return_data[0] / -arg2 + 10^18:
        revert with 0, 17
    if (10^18 * 10^18 * ext_call.return_data[0] / -arg2 + 10^18) - (arg2 * 10^18 * ext_call.return_data[0] / -arg2 + 10^18) / 10^18 >= ext_call.return_data[0]:
        return (10^18 * ext_call.return_data[0] / -arg2 + 10^18)
    if 10^18 * ext_call.return_data[0] / -arg2 + 10^18 > -2:
        revert with 0, 17
    return ((10^18 * ext_call.return_data[0] / -arg2 + 10^18) + 1)
}

function sub_847fdc6b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(stakingContractAddress))
    staticcall address(stakingContractAddress).0x2997717b with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10^18 < sub_4f053eea:
        revert with 0, 17
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not -sub_4f053eea + 10^18:
        revert with 0, 18
    if 10^18 < sub_4f053eea:
        revert with 0, 17
    if 10^18 * ext_call.return_data[0] / -sub_4f053eea + 10^18 and -sub_4f053eea + 10^18 > -1 / 10^18 * ext_call.return_data[0] / -sub_4f053eea + 10^18:
        revert with 0, 17
    if (10^18 * 10^18 * ext_call.return_data[0] / -sub_4f053eea + 10^18) - (sub_4f053eea * 10^18 * ext_call.return_data[0] / -sub_4f053eea + 10^18) / 10^18 >= ext_call.return_data[0]:
        return (10^18 * ext_call.return_data[0] / -sub_4f053eea + 10^18)
    if 10^18 * ext_call.return_data[0] / -sub_4f053eea + 10^18 > -2:
        revert with 0, 17
    return ((10^18 * ext_call.return_data[0] / -sub_4f053eea + 10^18) + 1)
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    if block.timestamp > arg4:
        revert with 0, 'ERC20Permit: expired deadline'
    nonces[address(arg1)]++
    if arg7 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if arg5 != 27:
        if arg5 != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(stor154, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if address(signer) != arg1:
        revert with 0, 'ERC20Permit: invalid signature'
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg2:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if msg.sender:
        if arg1:
            if sub_e4aa4f3d[address(msg.sender)] < sub_7e059b22[address(msg.sender)]:
                revert with 0, 17
            if sub_e4aa4f3d[address(msg.sender)] - sub_7e059b22[address(msg.sender)] < arg2:
                revert with 0, 'amount exceeds unblocked balance'
            if not address(stakingContractAddress):
                revert with 0, 'staking contract not set'
            require ext_code.size(address(stakingContractAddress))
            call address(stakingContractAddress).0x77c68ae1 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if sub_e4aa4f3d[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    sub_e4aa4f3d[address(msg.sender)] -= arg2
    if sub_e4aa4f3d[arg1] > !arg2:
        revert with 0, 17
    sub_e4aa4f3d[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][address(msg.sender)] != -1:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0, 'ERC20: insufficient allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg1:
        if arg2:
            if sub_e4aa4f3d[address(arg1)] < sub_7e059b22[address(arg1)]:
                revert with 0, 17
            if sub_e4aa4f3d[address(arg1)] - sub_7e059b22[address(arg1)] < arg3:
                revert with 0, 'amount exceeds unblocked balance'
            if not address(stakingContractAddress):
                revert with 0, 'staking contract not set'
            require ext_code.size(address(stakingContractAddress))
            call address(stakingContractAddress).0x77c68ae1 with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if sub_e4aa4f3d[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    sub_e4aa4f3d[address(arg1)] -= arg3
    if sub_e4aa4f3d[arg2] > !arg3:
        revert with 0, 17
    sub_e4aa4f3d[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function initialize(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    stor255 = 1
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor54.length) = 0
        stor54.length.field_1 = 9
        stor54.length.field_184 = 1204682536571141580142
        idx = 0
        while (uint255(stor54.length) * 0.5) + 31 / 32 > idx:
            stor54[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        bool(stor54.length) = 0
        stor54.length.field_1 = 9
        stor54.length.field_184 = 1204682536571141580142
        idx = 0
        while stor54.length.field_1 + 31 / 32 > idx:
            stor54[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor55.length) = 0
        stor55.length.field_1 = 3
        stor55.length.field_232 = 4279892
        idx = 0
        while (uint255(stor55.length) * 0.5) + 31 / 32 > idx:
            stor55[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        bool(stor55.length) = 0
        stor55.length.field_1 = 3
        stor55.length.field_232 = 4279892
        idx = 0
        while stor55.length.field_1 + 31 / 32 > idx:
            stor55[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not uint8(stor0.field_8):
        revert with 0, 'Initializable: contract is not initializing'
    stor101 = sha3(1204682536571141580142)
    stor102 = sha3(49)
    stor154 = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    sub_4f053eea = 5 * 10^17
    sub_4087c5c0 = arg1
}

function sub_8058c7f6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor255 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor255 = 2
    if not address(arg1):
        revert with 0, 'receiver can not be zero address'
    require ext_code.size(address(stakingContractAddress))
    staticcall address(stakingContractAddress).0xf5851493 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'sender is not registered'
    if sub_e4aa4f3d[address(msg.sender)] < sub_7e059b22[address(msg.sender)]:
        revert with 0, 17
    if sub_e4aa4f3d[address(msg.sender)] - sub_7e059b22[address(msg.sender)] > !sub_74fc4e04[msg.sender][address(arg1)].field_256:
        revert with 0, 17
    if sub_e4aa4f3d[address(msg.sender)] - sub_7e059b22[address(msg.sender)] + sub_74fc4e04[msg.sender][address(arg1)].field_256 < arg2:
        revert with 0, 'insufficient balance'
    if sub_74fc4e04[msg.sender][address(arg1)].field_256 >= arg2:
        revert with 0, 'collateral can be only increased'
    require ext_code.size(address(stakingContractAddress))
    staticcall address(stakingContractAddress).0x2997717b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10^18 < sub_4f053eea:
        revert with 0, 17
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not -sub_4f053eea + 10^18:
        revert with 0, 18
    if 10^18 < sub_4f053eea:
        revert with 0, 17
    if 10^18 * ext_call.return_data[0] / -sub_4f053eea + 10^18 and -sub_4f053eea + 10^18 > -1 / 10^18 * ext_call.return_data[0] / -sub_4f053eea + 10^18:
        revert with 0, 17
    if (10^18 * 10^18 * ext_call.return_data[0] / -sub_4f053eea + 10^18) - (sub_4f053eea * 10^18 * ext_call.return_data[0] / -sub_4f053eea + 10^18) / 10^18 >= ext_call.return_data[0]:
        if arg2 < 10^18 * ext_call.return_data[0] / -sub_4f053eea + 10^18:
            revert with 0, 'collateral too small'
    else:
        if 10^18 * ext_call.return_data[0] / -sub_4f053eea + 10^18 > -2:
            revert with 0, 17
        if arg2 < (10^18 * ext_call.return_data[0] / -sub_4f053eea + 10^18) + 1:
            revert with 0, 'collateral too small'
    if sub_7e059b22[msg.sender] < sub_74fc4e04[msg.sender][address(arg1)].field_256:
        revert with 0, 17
    sub_7e059b22[msg.sender] -= sub_74fc4e04[msg.sender][address(arg1)].field_256
    if sub_7e059b22[msg.sender] > !arg2:
        revert with 0, 17
    sub_7e059b22[msg.sender] += arg2
    sub_74fc4e04[msg.sender][address(arg1)].field_0 = sub_4f053eea
    sub_74fc4e04[msg.sender][address(arg1)].field_256 = arg2
    emit 0xb5d7b400: arg2, sub_4f053eea, msg.sender, address(arg1)
    stor255 = 1
}

function name() payable {
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor54.length):
            if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor54.length):
                if 31 < uint255(stor54.length) * 0.5:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor54.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 0, 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(uint255(stor54.length) * 0.5) + 192 len ceil32(uint255(stor54.length) * 0.5)] = mem[128 len ceil32(uint255(stor54.length) * 0.5)]
        if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
            mem[(uint255(stor54.length) * 0.5) + ceil32(uint255(stor54.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 0, 34
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor54.length):
            if 31 < uint255(stor54.length) * 0.5:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while (uint255(stor54.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[stor54.length.field_1 + ceil32(stor54.length.field_1) + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() payable {
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor55.length):
            if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor55.length):
                if 31 < uint255(stor55.length) * 0.5:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor55.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 0, 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(uint255(stor55.length) * 0.5) + 192 len ceil32(uint255(stor55.length) * 0.5)] = mem[128 len ceil32(uint255(stor55.length) * 0.5)]
        if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
            mem[(uint255(stor55.length) * 0.5) + ceil32(uint255(stor55.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 0, 34
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor55.length):
            if 31 < uint255(stor55.length) * 0.5:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while (uint255(stor55.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[stor55.length.field_1 + ceil32(stor55.length.field_1) + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
}

function sub_bd6f2c52(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor255 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor255 = 2
    mem[128] = sub_74fc4e04[address(arg1)][msg.sender].field_256
    if arg2 > sub_74fc4e04[address(arg1)][msg.sender].field_256:
        revert with 0, 'penalty exceeds collateral'
    if sub_74fc4e04[address(arg1)][msg.sender].field_0 and arg2 > -1 / sub_74fc4e04[address(arg1)][msg.sender].field_0:
        revert with 0, 17
    if sub_74fc4e04[address(arg1)][msg.sender].field_256 < sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18:
        revert with 0, 17
    if sub_74fc4e04[address(arg1)][msg.sender].field_256 - (sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18) > sub_74fc4e04[address(arg1)][address(msg.sender)].field_256:
        revert with 0, 'decrease exceeds collateral'
    if sub_74fc4e04[address(arg1)][address(msg.sender)].field_256 != sub_74fc4e04[address(arg1)][msg.sender].field_256 - (sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18):
        if sub_74fc4e04[address(arg1)][address(msg.sender)].field_256 < sub_74fc4e04[address(arg1)][msg.sender].field_256 - (sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18):
            revert with 0, 17
        sub_74fc4e04[address(arg1)][address(msg.sender)].field_256 = sub_74fc4e04[address(arg1)][address(msg.sender)].field_256 - sub_74fc4e04[address(arg1)][msg.sender].field_256 + (sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18)
    else:
        sub_74fc4e04[address(arg1)][address(msg.sender)].field_0 = 0
        sub_74fc4e04[address(arg1)][address(msg.sender)].field_256 = 0
    if sub_7e059b22[address(arg1)] < sub_74fc4e04[address(arg1)][msg.sender].field_256 - (sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18):
        revert with 0, 17
    sub_7e059b22[address(arg1)] = sub_7e059b22[address(arg1)] - sub_74fc4e04[address(arg1)][msg.sender].field_256 + (sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18)
    emit 0x61934a17: (sub_74fc4e04[address(arg1)][msg.sender].field_256 - (sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18)), address(arg1), msg.sender
    if sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18:
        if sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18 > sub_74fc4e04[address(arg1)][address(msg.sender)].field_256:
            revert with 0, 'decrease exceeds collateral'
        if sub_74fc4e04[address(arg1)][address(msg.sender)].field_256 != sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18:
            if sub_74fc4e04[address(arg1)][address(msg.sender)].field_256 < sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18:
                revert with 0, 17
            sub_74fc4e04[address(arg1)][address(msg.sender)].field_256 -= sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18
        else:
            sub_74fc4e04[address(arg1)][address(msg.sender)].field_0 = 0
            sub_74fc4e04[address(arg1)][address(msg.sender)].field_256 = 0
        if sub_7e059b22[address(arg1)] < sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18:
            revert with 0, 17
        sub_7e059b22[address(arg1)] -= sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18
        mem[164] = address(arg1)
        mem[196] = sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18
        require ext_code.size(address(stakingContractAddress))
        call address(stakingContractAddress).0x7bb7510a with:
             gas gas_remaining wei
            args address(arg1), sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(stakingContractAddress))
        staticcall address(stakingContractAddress).stakeToken() with:
                gas gas_remaining wei
        mem[160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18:
            mem[ceil32(return_data.size) + 196] = address(stakingContractAddress)
            mem[ceil32(return_data.size) + 228] = sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18
            mem[ceil32(return_data.size) + 160] = 68
            mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 0, stor309)
            mem[ceil32(return_data.size) + 192 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(return_data.size) + 260] = 32
            mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 324 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor309), uint32(stor309), sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18, 0
            mem[ceil32(return_data.size) + 392] = 0
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor309), uint32(stor309), sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor309), uint32(stor309), sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if sub_74fc4e04[address(arg1)][msg.sender].field_0:
                        revert with memory
                          from 128
                           len sub_74fc4e04[address(arg1)][msg.sender].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if sub_74fc4e04[address(arg1)][msg.sender].field_0:
                    require sub_74fc4e04[address(arg1)][msg.sender].field_0 >= 32
                    require sub_74fc4e04[address(arg1)][msg.sender].field_256 == bool(sub_74fc4e04[address(arg1)][msg.sender].field_256)
                    if not sub_74fc4e04[address(arg1)][msg.sender].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                    if not mem[ceil32(return_data.size) + 356]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 164] = this.address
            mem[ceil32(return_data.size) + 196] = address(stakingContractAddress)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(stakingContractAddress)
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[(2 * ceil32(return_data.size)) + 196] = address(stakingContractAddress)
            mem[(2 * ceil32(return_data.size)) + 228] = sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18
            mem[(2 * ceil32(return_data.size)) + 160] = 68
            mem[(2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor309)
            mem[(2 * ceil32(return_data.size)) + 192 len 4] = approve(address arg1, uint256 arg2)
            mem[(2 * ceil32(return_data.size)) + 260] = 32
            mem[(2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 324 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor309), uint32(stor309), sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18, 0
            mem[(2 * ceil32(return_data.size)) + 392] = 0
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor309), uint32(stor309), sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor309), uint32(stor309), sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if sub_74fc4e04[address(arg1)][msg.sender].field_0:
                        revert with memory
                          from 128
                           len sub_74fc4e04[address(arg1)][msg.sender].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if sub_74fc4e04[address(arg1)][msg.sender].field_0:
                    require sub_74fc4e04[address(arg1)][msg.sender].field_0 >= 32
                    require sub_74fc4e04[address(arg1)][msg.sender].field_256 == bool(sub_74fc4e04[address(arg1)][msg.sender].field_256)
                    if not sub_74fc4e04[address(arg1)][msg.sender].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 356] == bool(mem[(2 * ceil32(return_data.size)) + 356])
                    if not mem[(2 * ceil32(return_data.size)) + 356]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(stakingContractAddress))
        staticcall address(stakingContractAddress).stakeToken() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(stakingContractAddress))
        call address(stakingContractAddress).0x6826bf2c with:
             gas gas_remaining wei
            args address(this.address), address(ext_call.return_data[0]), sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18, sub_4087c5c0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x427364c5: (sub_74fc4e04[address(arg1)][msg.sender].field_0 * arg2 / 10^18), address(arg1), msg.sender
    stor255 = 1
}



}
