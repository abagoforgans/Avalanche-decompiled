contract main {




// =====================  Runtime code  =====================


#
#  - sub_63e8d030(?)
#  - withdrawToken(address arg1, uint256 arg2)
#  - sub_ddbf33d1(?)
#  - approveTokens()
#  - _fallback()
#
address owner;
array of struct stor4;
uint32 stor5;
address stor5;
uint256 stor5;

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdrawGas() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(stor5) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: GAS_TRANSFER_FAILED'
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

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(return_data.size) + 132] = address(stor5)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor5)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_d05429d3(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 >= uint255(stor4.length) * 0.5:
                    mem[128] = 256 * stor4.length.field_8
                else:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 >= stor4.length.field_1:
                    mem[128] = 256 * stor4.length.field_8
                else:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(uint255(stor4.length) * 0.5) + 196] = uint255(stor4.length) * 0.5
        mem[ceil32(uint255(stor4.length) * 0.5) + 228 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 228] = 0
        mem[ceil32(uint255(stor4.length) * 0.5) + 164] = ceil32(uint255(stor4.length) * 0.5) + 96
        mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 228] = 5
        mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 260] = 'oasis'
        require ext_code.size(0x81b03608f0ff58f7c525f84702f850bdaef5d4e2)
        delegate 0x81b03608f0ff58f7c525f84702f850bdaef5d4e2.compare(string arg1, string arg2) with:
             gas gas_remaining wei
            args Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], 5, 'oasis'), ceil32(uint255(stor4.length) * 0.5) + 96
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] == bool(delegate.return_data[0])
        if not delegate.return_data[0]:
            revert with 0, 'withdrawYuzuswapReward: only support yuzuswap'
        mem[ceil32(uint255(stor4.length) * 0.5) + ceil32(return_data.size) + 164] = 0, mem[ceil32(uint255(stor4.length) * 0.5) + ceil32(return_data.size) + 164 len 28]
        call 0xe63bbe4ef29bffc40fa6ae337ca2e532c9a30224.mem[ceil32(uint255(stor4.length) * 0.5) + ceil32(return_data.size) + 164 len 4] with:
             gas gas_remaining wei
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 >= uint255(stor4.length) * 0.5:
                    mem[128] = 256 * stor4.length.field_8
                else:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 >= stor4.length.field_1:
                    mem[128] = 256 * stor4.length.field_8
                else:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(stor4.length.field_1) + 196] = stor4.length.field_1
        mem[ceil32(stor4.length.field_1) + 228 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 228] = 0
        mem[ceil32(stor4.length.field_1) + 164] = ceil32(stor4.length.field_1) + 96
        mem[(2 * ceil32(stor4.length.field_1)) + 228] = 5
        mem[(2 * ceil32(stor4.length.field_1)) + 260] = 'oasis'
        require ext_code.size(0x81b03608f0ff58f7c525f84702f850bdaef5d4e2)
        delegate 0x81b03608f0ff58f7c525f84702f850bdaef5d4e2.compare(string arg1, string arg2) with:
             gas gas_remaining wei
            args Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], 5, 'oasis'), ceil32(stor4.length.field_1) + 96
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] == bool(delegate.return_data[0])
        if not delegate.return_data[0]:
            revert with 0, 'withdrawYuzuswapReward: only support yuzuswap'
        mem[ceil32(stor4.length.field_1) + ceil32(return_data.size) + 164] = 0, mem[ceil32(stor4.length.field_1) + ceil32(return_data.size) + 164 len 28]
        call 0xe63bbe4ef29bffc40fa6ae337ca2e532c9a30224.mem[ceil32(stor4.length.field_1) + ceil32(return_data.size) + 164 len 4] with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdrawYuzuswapReward: WITHDRAW_ALL_FAILED'
}



}
