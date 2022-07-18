contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address signerAddress;
address tokenAddress;
mapping of uint8 stor4;
mapping of uint256 sub_7f4b73d2;
uint256 sub_947e52ba;
mapping of uint256 stor7;
uint256 defaultLimit;
uint8 stor9;
uint256 stor10;

function limitPaused() payable {
    return bool(stor9)
}

function signerAddress() payable {
    return signerAddress
}

function sub_7f4b73d2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7f4b73d2[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_947e52ba(?) payable {
    return sub_947e52ba
}

function tokenAddress() payable {
    return tokenAddress
}

function defaultLimit() payable {
    return defaultLimit
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

function sub_629dee60(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    defaultLimit = arg1
}

function updateTimeLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = arg1
}

function updateDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_947e52ba = arg1
}

function getLimit(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7[address(arg1)]:
        return stor7[address(arg1)]
    return defaultLimit
}

function sub_ed62e644(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = uint8(bool(arg1))
}

function addAdminRole(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 1
}

function updateTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
}

function updateSignerAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    signerAddress = arg1
}

function revokeAdminRole(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 0
}

function setLimit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = arg2
}

function sub_6422039d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Unknown address'
    sub_7f4b73d2[address(arg1)] = arg2
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

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor4[msg.sender]:
        revert with 0, 'Caller is not the admin'
    if arg1 <= 0:
        revert with 0, 'Not a valid amount'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposited(arg1);
}

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f2320568(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg4.length)) + 129] = address(arg1)
    mem[ceil32(ceil32(arg4.length)) + 161] = arg2
    mem[ceil32(ceil32(arg4.length)) + 97] = 96
    if 65 == arg4.length:
        if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg4.length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if 27 > !(bool(mem[160]) >> 255):
        revert with 0, 17
    if uint255(mem[160]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[160]) >> 255) + 27) != 27:
        if uint8((bool(mem[160]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(sha3(address(arg1), arg2, arg3), (bool(mem[160]) >> 255) + 27 << 248, mem[128], uint255(mem[160])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    return address(signer)
}

function sub_09e9be4b(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[ceil32(ceil32(arg3.length)) + 101] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Not enough balance'
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 129] = msg.sender
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161] = arg1
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97] = 96
    if 65 == arg3.length:
        if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg3.length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if 27 > !(bool(mem[160]) >> 255):
        revert with 0, 17
    if uint255(mem[160]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[160]) >> 255) + 27) != 27:
        if uint8((bool(mem[160]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(sha3(msg.sender, arg1, arg2), (bool(mem[160]) >> 255) + 27 << 248, mem[128], uint255(mem[160])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if signerAddress != address(signer):
        revert with 0, 'Invalid data provided'
    if block.timestamp < stor10:
        revert with 0, 17
    if arg2 < block.timestamp - stor10:
        revert with 0, 'Out of time'
    if sub_7f4b73d2[address(msg.sender)] > !sub_947e52ba:
        revert with 0, 17
    if arg2 < sub_7f4b73d2[address(msg.sender)] + sub_947e52ba:
        revert with 0, 'Invalid timestamp'
    if not stor9:
        if stor7[address(msg.sender)]:
            if arg1 >= stor7[address(msg.sender)]:
                revert with 0, 'Amount exceeds limit'
        else:
            if arg1 >= defaultLimit:
                revert with 0, 'Amount exceeds limit'
    sub_7f4b73d2[address(msg.sender)] = block.timestamp
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Payout(msg.sender, arg1);
    stor1 = 1
}



}
