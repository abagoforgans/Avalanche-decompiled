contract main {




// =====================  Runtime code  =====================


#
#  - transferOut(address arg1, address arg2, uint256 arg3, bytes32 arg4, uint64 arg5, uint64 arg6, address arg7)
#  - transferIn(address arg1, address arg2, uint256 arg3, bytes32 arg4, uint64 arg5, uint64 arg6, bytes32 arg7)
#
mapping of struct stor0;

function _fallback() payable {
    revert
}

function transfers(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0[arg1].field_1344 >= 4:
        revert with 0, 33
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280,
           stor0[arg1].field_1344
}

function refund(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = stor0[arg1].field_256
    mem[160] = stor0[arg1].field_512
    mem[192] = stor0[arg1].field_768
    mem[224] = stor0[arg1].field_1024
    mem[256] = stor0[arg1].field_1280
    if stor0[arg1].field_1344 > 3:
        revert with 0, 33
    mem[288] = stor0[arg1].field_1344
    if stor0[arg1].field_1344 > 3:
        revert with 0, 33
    if stor0[arg1].field_1344 != 1:
        revert with 0, 'not pending transfer'
    if stor0[arg1].field_1280 > block.timestamp:
        revert with 0, 'timelock not yet passed'
    stor0[arg1].field_1344 = 3
    mem[356] = stor0[arg1].field_0
    mem[388] = stor0[arg1].field_768
    mem[320] = 68
    mem[356 len 28] = stor0[arg1].field_0
    mem[352 len 4] = unknown_0xa9059cbb(?????)
    mem[420] = 32
    mem[452] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(stor0[arg1].field_512):
        revert with 0, 'Address: call to non-contract'
    mem[484 len 96] = unknown_0xa9059cbb(?????), stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_768, 0
    mem[552] = 0
    call stor0[arg1].field_512 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_768, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_768, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if stor0[arg1].field_0:
                revert with memory
                  from 128
                   len stor0[arg1].field_0
            revert with 0, 'SafeERC20: low-level call failed'
        if stor0[arg1].field_0:
            require stor0[arg1].field_0 >= 32
            require stor0[arg1].field_256 == bool(stor0[arg1].field_256)
            if not stor0[arg1].field_256:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[516] == bool(mem[516])
            if not mem[516]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit LogTransferRefunded(arg1);
}

function confirm(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    mem[128] = stor0[arg1].field_256
    mem[160] = stor0[arg1].field_512
    mem[192] = stor0[arg1].field_768
    mem[224] = stor0[arg1].field_1024
    mem[256] = stor0[arg1].field_1280
    if stor0[arg1].field_1344 > 3:
        revert with 0, 33
    mem[288] = stor0[arg1].field_1344
    if stor0[arg1].field_1344 > 3:
        revert with 0, 33
    if stor0[arg1].field_1344 != 1:
        revert with 0, 'not pending transfer'
    mem[352] = arg2
    mem[320] = 32
    if stor0[arg1].field_1024 != sha3(arg2):
        revert with 0, 'incorrect preimage'
    stor0[arg1].field_1344 = 2
    mem[420] = stor0[arg1].field_256
    mem[452] = stor0[arg1].field_768
    mem[384] = 68
    mem[420 len 28] = stor0[arg1].field_256
    mem[416 len 4] = unknown_0xa9059cbb(?????)
    mem[484] = 32
    mem[516] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(stor0[arg1].field_512):
        revert with 0, 'Address: call to non-contract'
    mem[548 len 96] = unknown_0xa9059cbb(?????), stor0[arg1].field_256, stor0[arg1].field_256, stor0[arg1].field_768, 0
    mem[616] = 0
    call stor0[arg1].field_512 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), stor0[arg1].field_256, stor0[arg1].field_256, stor0[arg1].field_768, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), stor0[arg1].field_256, stor0[arg1].field_256, stor0[arg1].field_768, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if stor0[arg1].field_0:
                revert with memory
                  from 128
                   len stor0[arg1].field_0
            revert with 0, 'SafeERC20: low-level call failed'
        if stor0[arg1].field_0:
            require stor0[arg1].field_0 >= 32
            require stor0[arg1].field_256 == bool(stor0[arg1].field_256)
            if not stor0[arg1].field_256:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[580] == bool(mem[580])
            if not mem[580]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit LogTransferConfirmed(arg1, arg2);
}



}
