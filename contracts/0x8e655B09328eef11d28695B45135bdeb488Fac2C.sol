contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint8 arg2)
#
const sub_8e29c338(?) = 0x136acd46c134e8269052c62a67042d6bdedde3c9


address owner;
array of address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint8 depositLock; offset 176
uint8 withdrawLock; offset 184
uint16 sub_017f6fae; offset 160
uint16 stor5; offset 176
uint128 stor5; offset 184
uint128 stor5; offset 176
address feeCollectorAddress;

function sub_017f6fae(?) payable {
    return sub_017f6fae
}

function depositLock() payable {
    return bool(depositLock)
}

function withdrawLock() payable {
    return bool(withdrawLock)
}

function owner() payable {
    return owner
}

function feeCollector() payable {
    return feeCollectorAddress
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

function setFeeBP(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_017f6fae = arg1
}

function setFeeCollector(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeCollectorAddress = arg1
}

function setDepositLock(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor5.field_176) = Mask(80, 0, arg1)
}

function setWithdrawLock(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(72, 0, stor5.field_184) = Mask(72, 0, arg1)
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

function sub_bb8b1c4f(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg5 == uint8(arg5)
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    call 0x136acd46c134e8269052c62a67042d6bdedde3c9.permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, arg4, arg5 << 248, arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_521df5a1(?) payable {
    require calldata.size - 4 >= 96
    require arg2 < 2
    require arg3 < 2
    if withdrawLock:
        revert with 0, 'Swap is locked from withdraw'
    if arg2 > 1:
        revert with 0, 33
    if arg2 >= 2:
        revert with 0, 50
    require ext_code.size(stor1[arg2])
    call stor1[arg2].burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3 > 1:
        revert with 0, 33
    if arg3 >= 2:
        revert with 0, 50
    require ext_code.size(stor1[arg3])
    call stor1[arg3].mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3 = sha3(msg.sender)
}

function sub_50c1e478(?) payable {
    require calldata.size - 4 >= 288
    require arg2 < 2
    require calldata.size - 68 >= 224
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[128] = arg4
    mem[160] = arg5
    mem[192] = arg6
    require arg7 == uint8(arg7)
    mem[224] = arg7
    mem[256] = arg8
    mem[288] = arg9
    if depositLock:
        revert with 0, 'Deposit is locked'
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    call 0x136acd46c134e8269052c62a67042d6bdedde3c9.permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
         gas gas_remaining wei
        args address(arg3), address(arg4), arg5, arg6, arg7 << 248, arg8, arg9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[356] = msg.sender
    mem[388] = this.address
    mem[420] = arg1
    mem[320] = 100
    mem[356 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[352 len 4] = unknown_0x23b872dd(?????)
    mem[452] = 32
    mem[484] = 'SafeERC20: low-level call failed'
    if not ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9):
        revert with 0, 'Address: call to non-contract'
    mem[516 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
    mem[616] = 0
    call 0x136acd46c134e8269052c62a67042d6bdedde3c9 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if arg3:
                revert with memory
                  from 128
                   len arg3
            revert with 0, 'SafeERC20: low-level call failed'
        if arg3:
            require arg3 >= 32
            require arg4 == bool(arg4)
            if not arg4:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[548] == bool(mem[548])
            if not mem[548]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if arg2 > 1:
        revert with 0, 33
    if arg2 >= 2:
        revert with 0, 50
    require ext_code.size(stor1[arg2])
    call stor1[arg2].mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3 = sha3(msg.sender)
    return 1
}

function sub_6dd79be8(?) payable {
    require calldata.size - 4 >= 64
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
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Controller has no MEMO'
    require ext_code.size(stor1.length)
    staticcall stor1.length.0x18160ddd with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    require ext_code.size(stor2)
    staticcall stor2.0x18160ddd with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if 2 * ext_call.return_data[0] <= 0:
        revert with 0, 'No MEMO deposited in pools'
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + 164] = this.address
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
        revert with 0, 17
    if sub_017f6fae and -ext_call.return_data[0] > -1 / sub_017f6fae:
        revert with 0, 17
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    call 0x136acd46c134e8269052c62a67042d6bdedde3c9.0xa9059cbb with:
         gas gas_remaining wei
        args feeCollectorAddress, (ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sha3(msg.sender, arg1) != stor4:
        revert with 0, 'Invalid RNG seed key'
    if block.number < 1:
        revert with 0, 17
    require ext_code.size(stor1.length)
    staticcall stor1.length.0x18160ddd with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(8 * ceil32(return_data.size)) + 256] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2)
    staticcall stor2.0x18160ddd with:
            gas gas_remaining wei
           args mem[(8 * ceil32(return_data.size)) + 260 len ceil32(return_data.size)]
    mem[(8 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(sha3(arg1, block.hash(block.number - 1), stor3, ext_call.return_data[0], ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 448 len 5 * ceil32(return_data.size)])) > 1:
        revert with 0, 33
    if bool(sha3(arg1, block.hash(block.number - 1), stor3, ext_call.return_data[0], ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 448 len 5 * ceil32(return_data.size)])) >= 2:
        revert with 0, 50
    if bool(sha3(arg1, block.hash(block.number - 1), stor3, ext_call.return_data[0], ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 448 len 5 * ceil32(return_data.size)])) > 1:
        revert with 0, 33
    if not mem[(32 * bool(sha3(arg1, block.hash(block.number - 1), stor3, ext_call.return_data[0], ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 448 len 5 * ceil32(return_data.size)]))) + ceil32(return_data.size) + 96]:
        if -ext_call.return_data[0] < (ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) / 10000:
            revert with 0, 17
        if not bool(sha3(arg1, block.hash(block.number - 1), stor3, ext_call.return_data[0], ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 448 len 5 * ceil32(return_data.size)])):
            require ext_code.size(stor2)
            call stor2.rebase(uint256 arg1) with:
                 gas gas_remaining wei
                args (-ext_call.return_data[0] - ((ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) / 10000))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor4 = arg2
            uint16(stor5.field_176) = 0
            if -ext_call.return_data[0] < (ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) / 10000:
                revert with 0, 17
            emit 0x5899dee6: -ext_call.return_data[0] - ((ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) / 10000), ext_call.return_data[0], ext_call.return_data[0], 1, block.timestamp
        else:
            require ext_code.size(stor1.length)
            call stor1.length.rebase(uint256 arg1) with:
                 gas gas_remaining wei
                args (-ext_call.return_data[0] - ((ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) / 10000))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor4 = arg2
            uint16(stor5.field_176) = 0
            if -ext_call.return_data[0] < (ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) / 10000:
                revert with 0, 17
            emit 0x5899dee6: -ext_call.return_data[0] - ((ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) / 10000), ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp
    else:
        if bool(sha3(arg1, block.hash(block.number - 1), stor3, ext_call.return_data[0], ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 448 len 5 * ceil32(return_data.size)])) >= 2:
            revert with 0, 50
        if -ext_call.return_data[0] < (ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) / 10000:
            revert with 0, 17
        require ext_code.size(stor1[bool(sha3(arg1, block.hash(block.number - 1), stor3, ext_call.return_data[0], ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 448 len 5 * ceil32(return_data.size)]))])
        call stor1[bool(sha3(arg1, block.hash(block.number - 1), stor3, ext_call.return_data[0], ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 448 len 5 * ceil32(return_data.size)]))].rebase(uint256 arg1) with:
             gas gas_remaining wei
            args (-ext_call.return_data[0] - ((ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) / 10000))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor4 = arg2
        uint16(stor5.field_176) = 0
        if -ext_call.return_data[0] < (ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) / 10000:
            revert with 0, 17
        if bool(sha3(arg1, block.hash(block.number - 1), stor3, ext_call.return_data[0], ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 448 len 5 * ceil32(return_data.size)])) > 1:
            revert with 0, 33
        emit 0x5899dee6: -ext_call.return_data[0] - ((ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) - (ext_call.return_data[0] * sub_017f6fae) / 10000), ext_call.return_data[0], ext_call.return_data[0], bool(sha3(arg1, block.hash(block.number - 1), stor3, ext_call.return_data[0], ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 448 len 5 * ceil32(return_data.size)])), block.timestamp
}



}
