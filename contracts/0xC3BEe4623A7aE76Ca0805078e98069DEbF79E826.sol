contract main {




// =====================  Runtime code  =====================


#
#  - revokeAllowance(address arg1, address arg2)
#  - recoverERC20(address arg1, uint256 arg2)
#
const mYAK = 0xddaaad7366b455aff8e7c82940c43ceb5829b604

const ID = 0x8b68732dbbb33fc3105b497e4a9c179f46524a29755673e58b17e73386798263

const YAK = 0x59414b3089ce2af0010e7523dea7e2b35d776ec7


address owner;
uint256 swapGasEstimate;
array of uint256 name;

function name() {
    return name[0 len name.length]
}

function swapGasEstimate() {
    return swapGasEstimate
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setSwapGasEstimate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    swapGasEstimate = arg1
    emit 0xf43f23b7: arg1, this.address
}

function recoverAVAX(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'YakAdapter: Nothing to recover'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Recovered(address rg1, uint256 rg2):
                   arg1,
    emit 0x0: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6e4f776e61626c653a204e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function query(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if arg2 != 0xddaaad7366b455aff8e7c82940c43ceb5829b604:
        if arg2 != 0x59414b3089ce2af0010e7523dea7e2b35d776ec7:
            return 0
        if arg3 != 0xddaaad7366b455aff8e7c82940c43ceb5829b604:
            return 0
    else:
        if arg3 != 0x59414b3089ce2af0010e7523dea7e2b35d776ec7:
            if arg2 != 0x59414b3089ce2af0010e7523dea7e2b35d776ec7:
                return 0
            if arg3 != 0xddaaad7366b455aff8e7c82940c43ceb5829b604:
                return 0
    return arg1
}

function swap(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    if arg3 != 0xddaaad7366b455aff8e7c82940c43ceb5829b604:
        if arg3 != 0x59414b3089ce2af0010e7523dea7e2b35d776ec7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4d696e6959616b416461707465723a20556e737570706f7274656420746f6b65,
                        mem[197 len 31]
        if arg4 != 0xddaaad7366b455aff8e7c82940c43ceb5829b604:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4d696e6959616b416461707465723a20556e737570706f7274656420746f6b65,
                        mem[197 len 31]
        require ext_code.size(0xddaaad7366b455aff8e7c82940c43ceb5829b604)
        call 0xddaaad7366b455aff8e7c82940c43ceb5829b604.moon(uint256 rg1, address rg2) with:
             gas gas_remaining wei
            args arg1, arg5
    else:
        if 0x59414b3089ce2af0010e7523dea7e2b35d776ec7 == arg4:
            require ext_code.size(0xddaaad7366b455aff8e7c82940c43ceb5829b604)
            call 0xddaaad7366b455aff8e7c82940c43ceb5829b604.unmoon(uint256 rg1, address rg2) with:
                 gas gas_remaining wei
                args arg1, arg5
        else:
            if arg3 != 0x59414b3089ce2af0010e7523dea7e2b35d776ec7:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe4d696e6959616b416461707465723a20556e737570706f7274656420746f6b65,
                            mem[197 len 31]
            if arg4 != 0xddaaad7366b455aff8e7c82940c43ceb5829b604:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe4d696e6959616b416461707465723a20556e737570706f7274656420746f6b65,
                            mem[197 len 31]
            require ext_code.size(0xddaaad7366b455aff8e7c82940c43ceb5829b604)
            call 0xddaaad7366b455aff8e7c82940c43ceb5829b604.moon(uint256 rg1, address rg2) with:
                 gas gas_remaining wei
                args arg1, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xe2bdbc6b: arg1, arg2, arg3, arg4
}

function setAllowances() {
    require ext_code.size(0xddaaad7366b455aff8e7c82940c43ceb5829b604)
    staticcall 0xddaaad7366b455aff8e7c82940c43ceb5829b604.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), 0xddaaad7366b455aff8e7c82940c43ceb5829b604
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[ceil32(return_data.size) + 196 len 96] = approve(address rg1, uint256 rg2), 0xddaaad7366b455aff8e7c829, 0, -1, mem[ceil32(return_data.size) + 196 len 28]
    call 0xddaaad7366b455aff8e7c82940c43ceb5829b604.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, 0xddaaad7366b455aff8e7c82940c43ceb == bool(0, 0xddaaad7366b455aff8e7c82940c43ceb)
            if not 0, 0xddaaad7366b455aff8e7c82940c43ceb:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(0x59414b3089ce2af0010e7523dea7e2b35d776ec7)
        staticcall 0x59414b3089ce2af0010e7523dea7e2b35d776ec7.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0xddaaad7366b455aff8e7c82940c43ceb5829b604
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 296 len 96] = 0, 0xddaaad7366b455aff8e7c82940c43ceb5829b604, -1, mem[(2 * ceil32(return_data.size)) + 296 len 28]
        call 0x59414b3089ce2af0010e7523dea7e2b35d776ec7.mem[(2 * ceil32(return_data.size)) + 296 len 4] with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 300 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, 0xddaaad7366b455aff8e7c82940c43ceb == bool(0, 0xddaaad7366b455aff8e7c82940c43ceb)
                if not 0, 0xddaaad7366b455aff8e7c82940c43ceb:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 328] == bool(mem[(2 * ceil32(return_data.size)) + 328])
                if not mem[(2 * ceil32(return_data.size)) + 328]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(0x59414b3089ce2af0010e7523dea7e2b35d776ec7)
        staticcall 0x59414b3089ce2af0010e7523dea7e2b35d776ec7.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0xddaaad7366b455aff8e7c82940c43ceb5829b604
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, 0xddaaad7366b455aff8e7c82940c43ceb5829b604, -1, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
        call 0x59414b3089ce2af0010e7523dea7e2b35d776ec7.mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, 0xddaaad7366b455aff8e7c82940c43ceb == bool(0, 0xddaaad7366b455aff8e7c82940c43ceb)
                if not 0, 0xddaaad7366b455aff8e7c82940c43ceb:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
