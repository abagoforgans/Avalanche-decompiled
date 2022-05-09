contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address stor0;
uint256 stor0;

function _fallback() {
  stop
}

function getBalanceOfToken(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getBalanceOfUser(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args address(stor0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor0)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor0):
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function withdrawFrom(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor0)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[228 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(stor0), ext_call.return_data[0 len 28]
    mem[352 len 4] = ext_call.return_data[20 len 4]
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        ext_call.return_data[20 len 4],
                        mem[356 len 4]
        if not unknown_0x23b872dd(?????), address(this.address) << 64:
            revert with 0, 
                        32,
                        36,
                        0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        ext_call.return_data[20 len 4],
                        mem[356 len 4]
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[ceil32(return_data.size) + 333 len 28]
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            36,
                            0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 333 len 28]
}

function swapList(uint256 arg1, address[] arg2, address[] arg3, uint256[] arg4) {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == address(stor0)
    if arg2.length < 2:
        revert with 0, 'PancakeLibrary: INVALID_PATH'
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = arg2.length
    mem[64] = (64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224
    if not arg2.length:
        require 0 < arg2.length
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = arg1
        idx = 0
        while idx < arg2.length - 1:
            require idx < mem[(32 * arg2.length) + 128]
            require idx < arg2.length
            _1288 = mem[(32 * idx) + 128]
            require idx + 1 < arg2.length
            _1296 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 
                            32,
                            35,
                            0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 327 len 29]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * arg2.length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * arg2.length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                if mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 333 len 23]
                if address(_1288) == address(_1288):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 330 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 330 len 26]
                    if not -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) / -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 330 len 26]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 330 len 26]
                    if not -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) / -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * arg2.length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * arg2.length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                if mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 333 len 23]
                if address(_1288) == address(_1296):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 330 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 330 len 26]
                    if not -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) / -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 330 len 26]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 330 len 26]
                    if not -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) / -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
            idx = idx + 1
            continue 
        require mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] - 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
        if mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] - 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] <= arg1:
            revert with 0, 'ct_alt'
        require 0 < arg2.length
        require 0 < mem[(32 * arg2.length) + 128]
        require 0 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
        mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 260] = mem[(32 * arg2.length) + 172 len 20]
        mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 292] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
        mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 68
        mem[64] = (64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 324
        mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len 4] = transfer(address arg1, uint256 arg2)
        mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 324 len 64] = 0, mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 260 len 60]
        mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 416 len 4] = mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 312 len 4]
        call mem[140 len 20].mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 288 len 4] with:
             gas gas_remaining wei
            args mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 292], mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 288 len 28], mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not arg2.length:
                idx = 0
                while idx < arg2.length - 1:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        _3537 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3682 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3683 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3683 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3683 + 36] = 0
                                mem[_3683 + 68] = _3537
                                mem[_3683 + 100] = this.address
                                mem[_3683 + 132] = 128
                                mem[_3683 + 164] = mem[_3683]
                                s = 0
                                while s < mem[_3683]:
                                    mem[_3683 + s + 196] = mem[_3683 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3683] % 32:
                                    require ext_code.size(address(_3682))
                                    call address(_3682).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3537, address(this.address), 128, mem[_3683 + 164 len mem[_3683] + 32]
                                else:
                                    mem[floor32(mem[_3683]) + _3683 + 196] = mem[floor32(mem[_3683]) + _3683 + -(mem[_3683] % 32) + 228 len mem[_3683] % 32]
                                    require ext_code.size(address(_3682))
                                    call address(_3682).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3537, address(this.address), 128, mem[_3683], mem[_3683 + 196 len floor32(mem[_3683]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3617 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3777 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3778 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3778 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3778 + 36] = 0
                                mem[_3778 + 68] = _3537
                                mem[_3778 + 100] = address(_3617)
                                mem[_3778 + 132] = 128
                                mem[_3778 + 164] = mem[_3778]
                                s = 0
                                while s < mem[_3778]:
                                    mem[_3778 + s + 196] = mem[_3778 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3778] % 32:
                                    require ext_code.size(address(_3777))
                                    call address(_3777).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3537, address(_3617), 128, mem[_3778 + 164 len mem[_3778] + 32]
                                else:
                                    mem[floor32(mem[_3778]) + _3778 + 196] = mem[floor32(mem[_3778]) + _3778 + -(mem[_3778] % 32) + 228 len mem[_3778] % 32]
                                    require ext_code.size(address(_3777))
                                    call address(_3777).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3537, address(_3617), 128, mem[_3778], mem[_3778 + 196 len floor32(mem[_3778]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3685 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3686 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3686 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3686 + 36] = _3537
                                mem[_3686 + 68] = 0
                                mem[_3686 + 100] = this.address
                                mem[_3686 + 132] = 128
                                mem[_3686 + 164] = mem[_3686]
                                s = 0
                                while s < mem[_3686]:
                                    mem[_3686 + s + 196] = mem[_3686 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3686] % 32:
                                    require ext_code.size(address(_3685))
                                    call address(_3685).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3537, 0, address(this.address), 128, mem[_3686 + 164 len mem[_3686] + 32]
                                else:
                                    mem[floor32(mem[_3686]) + _3686 + 196] = mem[floor32(mem[_3686]) + _3686 + -(mem[_3686] % 32) + 228 len mem[_3686] % 32]
                                    require ext_code.size(address(_3685))
                                    call address(_3685).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3537, 0, address(this.address), 128, mem[_3686], mem[_3686 + 196 len floor32(mem[_3686]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3619 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3782 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3783 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3783 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3783 + 36] = _3537
                                mem[_3783 + 68] = 0
                                mem[_3783 + 100] = address(_3619)
                                mem[_3783 + 132] = 128
                                mem[_3783 + 164] = mem[_3783]
                                s = 0
                                while s < mem[_3783]:
                                    mem[_3783 + s + 196] = mem[_3783 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3783] % 32:
                                    require ext_code.size(address(_3782))
                                    call address(_3782).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3537, 0, address(_3619), 128, mem[_3783 + 164 len mem[_3783] + 32]
                                else:
                                    mem[floor32(mem[_3783]) + _3783 + 196] = mem[floor32(mem[_3783]) + _3783 + -(mem[_3783] % 32) + 228 len mem[_3783] % 32]
                                    require ext_code.size(address(_3782))
                                    call address(_3782).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3537, 0, address(_3619), 128, mem[_3783], mem[_3783 + 196 len floor32(mem[_3783]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        _3538 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3688 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3689 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3689 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3689 + 36] = 0
                                mem[_3689 + 68] = _3538
                                mem[_3689 + 100] = this.address
                                mem[_3689 + 132] = 128
                                mem[_3689 + 164] = mem[_3689]
                                s = 0
                                while s < mem[_3689]:
                                    mem[_3689 + s + 196] = mem[_3689 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3689] % 32:
                                    require ext_code.size(address(_3688))
                                    call address(_3688).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3538, address(this.address), 128, mem[_3689 + 164 len mem[_3689] + 32]
                                else:
                                    mem[floor32(mem[_3689]) + _3689 + 196] = mem[floor32(mem[_3689]) + _3689 + -(mem[_3689] % 32) + 228 len mem[_3689] % 32]
                                    require ext_code.size(address(_3688))
                                    call address(_3688).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3538, address(this.address), 128, mem[_3689], mem[_3689 + 196 len floor32(mem[_3689]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3621 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3787 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3788 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3788 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3788 + 36] = 0
                                mem[_3788 + 68] = _3538
                                mem[_3788 + 100] = address(_3621)
                                mem[_3788 + 132] = 128
                                mem[_3788 + 164] = mem[_3788]
                                s = 0
                                while s < mem[_3788]:
                                    mem[_3788 + s + 196] = mem[_3788 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3788] % 32:
                                    require ext_code.size(address(_3787))
                                    call address(_3787).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3538, address(_3621), 128, mem[_3788 + 164 len mem[_3788] + 32]
                                else:
                                    mem[floor32(mem[_3788]) + _3788 + 196] = mem[floor32(mem[_3788]) + _3788 + -(mem[_3788] % 32) + 228 len mem[_3788] % 32]
                                    require ext_code.size(address(_3787))
                                    call address(_3787).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3538, address(_3621), 128, mem[_3788], mem[_3788 + 196 len floor32(mem[_3788]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3691 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3692 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3692 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3692 + 36] = _3538
                                mem[_3692 + 68] = 0
                                mem[_3692 + 100] = this.address
                                mem[_3692 + 132] = 128
                                mem[_3692 + 164] = mem[_3692]
                                s = 0
                                while s < mem[_3692]:
                                    mem[_3692 + s + 196] = mem[_3692 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3692] % 32:
                                    require ext_code.size(address(_3691))
                                    call address(_3691).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3538, 0, address(this.address), 128, mem[_3692 + 164 len mem[_3692] + 32]
                                else:
                                    mem[floor32(mem[_3692]) + _3692 + 196] = mem[floor32(mem[_3692]) + _3692 + -(mem[_3692] % 32) + 228 len mem[_3692] % 32]
                                    require ext_code.size(address(_3691))
                                    call address(_3691).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3538, 0, address(this.address), 128, mem[_3692], mem[_3692 + 196 len floor32(mem[_3692]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3623 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3792 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3793 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3793 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3793 + 36] = _3538
                                mem[_3793 + 68] = 0
                                mem[_3793 + 100] = address(_3623)
                                mem[_3793 + 132] = 128
                                mem[_3793 + 164] = mem[_3793]
                                s = 0
                                while s < mem[_3793]:
                                    mem[_3793 + s + 196] = mem[_3793 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3793] % 32:
                                    require ext_code.size(address(_3792))
                                    call address(_3792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3538, 0, address(_3623), 128, mem[_3793 + 164 len mem[_3793] + 32]
                                else:
                                    mem[floor32(mem[_3793]) + _3793 + 196] = mem[floor32(mem[_3793]) + _3793 + -(mem[_3793] % 32) + 228 len mem[_3793] % 32]
                                    require ext_code.size(address(_3792))
                                    call address(_3792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3538, 0, address(_3623), 128, mem[_3793], mem[_3793 + 196 len floor32(mem[_3793]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require arg2.length >= 32
                if not mem[128]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                idx = 0
                while idx < arg2.length - 1:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        _3539 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3694 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3695 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3695 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3695 + 36] = 0
                                mem[_3695 + 68] = _3539
                                mem[_3695 + 100] = this.address
                                mem[_3695 + 132] = 128
                                mem[_3695 + 164] = mem[_3695]
                                s = 0
                                while s < mem[_3695]:
                                    mem[_3695 + s + 196] = mem[_3695 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3695] % 32:
                                    require ext_code.size(address(_3694))
                                    call address(_3694).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3539, address(this.address), 128, mem[_3695 + 164 len mem[_3695] + 32]
                                else:
                                    mem[floor32(mem[_3695]) + _3695 + 196] = mem[floor32(mem[_3695]) + _3695 + -(mem[_3695] % 32) + 228 len mem[_3695] % 32]
                                    require ext_code.size(address(_3694))
                                    call address(_3694).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3539, address(this.address), 128, mem[_3695], mem[_3695 + 196 len floor32(mem[_3695]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3625 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3797 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3798 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3798 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3798 + 36] = 0
                                mem[_3798 + 68] = _3539
                                mem[_3798 + 100] = address(_3625)
                                mem[_3798 + 132] = 128
                                mem[_3798 + 164] = mem[_3798]
                                s = 0
                                while s < mem[_3798]:
                                    mem[_3798 + s + 196] = mem[_3798 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3798] % 32:
                                    require ext_code.size(address(_3797))
                                    call address(_3797).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3539, address(_3625), 128, mem[_3798 + 164 len mem[_3798] + 32]
                                else:
                                    mem[floor32(mem[_3798]) + _3798 + 196] = mem[floor32(mem[_3798]) + _3798 + -(mem[_3798] % 32) + 228 len mem[_3798] % 32]
                                    require ext_code.size(address(_3797))
                                    call address(_3797).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3539, address(_3625), 128, mem[_3798], mem[_3798 + 196 len floor32(mem[_3798]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3697 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3698 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3698 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3698 + 36] = _3539
                                mem[_3698 + 68] = 0
                                mem[_3698 + 100] = this.address
                                mem[_3698 + 132] = 128
                                mem[_3698 + 164] = mem[_3698]
                                s = 0
                                while s < mem[_3698]:
                                    mem[_3698 + s + 196] = mem[_3698 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3698] % 32:
                                    require ext_code.size(address(_3697))
                                    call address(_3697).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3539, 0, address(this.address), 128, mem[_3698 + 164 len mem[_3698] + 32]
                                else:
                                    mem[floor32(mem[_3698]) + _3698 + 196] = mem[floor32(mem[_3698]) + _3698 + -(mem[_3698] % 32) + 228 len mem[_3698] % 32]
                                    require ext_code.size(address(_3697))
                                    call address(_3697).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3539, 0, address(this.address), 128, mem[_3698], mem[_3698 + 196 len floor32(mem[_3698]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3627 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3802 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3803 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3803 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3803 + 36] = _3539
                                mem[_3803 + 68] = 0
                                mem[_3803 + 100] = address(_3627)
                                mem[_3803 + 132] = 128
                                mem[_3803 + 164] = mem[_3803]
                                s = 0
                                while s < mem[_3803]:
                                    mem[_3803 + s + 196] = mem[_3803 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3803] % 32:
                                    require ext_code.size(address(_3802))
                                    call address(_3802).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3539, 0, address(_3627), 128, mem[_3803 + 164 len mem[_3803] + 32]
                                else:
                                    mem[floor32(mem[_3803]) + _3803 + 196] = mem[floor32(mem[_3803]) + _3803 + -(mem[_3803] % 32) + 228 len mem[_3803] % 32]
                                    require ext_code.size(address(_3802))
                                    call address(_3802).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3539, 0, address(_3627), 128, mem[_3803], mem[_3803 + 196 len floor32(mem[_3803]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        _3540 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3700 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3701 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3701 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3701 + 36] = 0
                                mem[_3701 + 68] = _3540
                                mem[_3701 + 100] = this.address
                                mem[_3701 + 132] = 128
                                mem[_3701 + 164] = mem[_3701]
                                s = 0
                                while s < mem[_3701]:
                                    mem[_3701 + s + 196] = mem[_3701 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3701] % 32:
                                    require ext_code.size(address(_3700))
                                    call address(_3700).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3540, address(this.address), 128, mem[_3701 + 164 len mem[_3701] + 32]
                                else:
                                    mem[floor32(mem[_3701]) + _3701 + 196] = mem[floor32(mem[_3701]) + _3701 + -(mem[_3701] % 32) + 228 len mem[_3701] % 32]
                                    require ext_code.size(address(_3700))
                                    call address(_3700).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3540, address(this.address), 128, mem[_3701], mem[_3701 + 196 len floor32(mem[_3701]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3629 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3807 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3808 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3808 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3808 + 36] = 0
                                mem[_3808 + 68] = _3540
                                mem[_3808 + 100] = address(_3629)
                                mem[_3808 + 132] = 128
                                mem[_3808 + 164] = mem[_3808]
                                s = 0
                                while s < mem[_3808]:
                                    mem[_3808 + s + 196] = mem[_3808 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3808] % 32:
                                    require ext_code.size(address(_3807))
                                    call address(_3807).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3540, address(_3629), 128, mem[_3808 + 164 len mem[_3808] + 32]
                                else:
                                    mem[floor32(mem[_3808]) + _3808 + 196] = mem[floor32(mem[_3808]) + _3808 + -(mem[_3808] % 32) + 228 len mem[_3808] % 32]
                                    require ext_code.size(address(_3807))
                                    call address(_3807).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3540, address(_3629), 128, mem[_3808], mem[_3808 + 196 len floor32(mem[_3808]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3703 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3704 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3704 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3704 + 36] = _3540
                                mem[_3704 + 68] = 0
                                mem[_3704 + 100] = this.address
                                mem[_3704 + 132] = 128
                                mem[_3704 + 164] = mem[_3704]
                                s = 0
                                while s < mem[_3704]:
                                    mem[_3704 + s + 196] = mem[_3704 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3704] % 32:
                                    require ext_code.size(address(_3703))
                                    call address(_3703).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3540, 0, address(this.address), 128, mem[_3704 + 164 len mem[_3704] + 32]
                                else:
                                    mem[floor32(mem[_3704]) + _3704 + 196] = mem[floor32(mem[_3704]) + _3704 + -(mem[_3704] % 32) + 228 len mem[_3704] % 32]
                                    require ext_code.size(address(_3703))
                                    call address(_3703).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3540, 0, address(this.address), 128, mem[_3704], mem[_3704 + 196 len floor32(mem[_3704]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3631 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3812 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3813 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3813 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3813 + 36] = _3540
                                mem[_3813 + 68] = 0
                                mem[_3813 + 100] = address(_3631)
                                mem[_3813 + 132] = 128
                                mem[_3813 + 164] = mem[_3813]
                                s = 0
                                while s < mem[_3813]:
                                    mem[_3813 + s + 196] = mem[_3813 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3813] % 32:
                                    require ext_code.size(address(_3812))
                                    call address(_3812).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3540, 0, address(_3631), 128, mem[_3813 + 164 len mem[_3813] + 32]
                                else:
                                    mem[floor32(mem[_3813]) + _3813 + 196] = mem[floor32(mem[_3813]) + _3813 + -(mem[_3813] % 32) + 228 len mem[_3813] % 32]
                                    require ext_code.size(address(_3812))
                                    call address(_3812).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3540, 0, address(_3631), 128, mem[_3813], mem[_3813 + 196 len floor32(mem[_3813]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            mem[64] = (64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 325
            mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 324] = return_data.size
            mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not return_data.size:
                idx = 0
                while idx < arg2.length - 1:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        _3541 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3706 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3707 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3707 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3707 + 36] = 0
                                mem[_3707 + 68] = _3541
                                mem[_3707 + 100] = this.address
                                mem[_3707 + 132] = 128
                                mem[_3707 + 164] = mem[_3707]
                                s = 0
                                while s < mem[_3707]:
                                    mem[_3707 + s + 196] = mem[_3707 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3707] % 32:
                                    require ext_code.size(address(_3706))
                                    call address(_3706).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3541, address(this.address), 128, mem[_3707 + 164 len mem[_3707] + 32]
                                else:
                                    mem[floor32(mem[_3707]) + _3707 + 196] = mem[floor32(mem[_3707]) + _3707 + -(mem[_3707] % 32) + 228 len mem[_3707] % 32]
                                    require ext_code.size(address(_3706))
                                    call address(_3706).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3541, address(this.address), 128, mem[_3707], mem[_3707 + 196 len floor32(mem[_3707]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3633 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3817 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3818 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3818 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3818 + 36] = 0
                                mem[_3818 + 68] = _3541
                                mem[_3818 + 100] = address(_3633)
                                mem[_3818 + 132] = 128
                                mem[_3818 + 164] = mem[_3818]
                                s = 0
                                while s < mem[_3818]:
                                    mem[_3818 + s + 196] = mem[_3818 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3818] % 32:
                                    require ext_code.size(address(_3817))
                                    call address(_3817).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3541, address(_3633), 128, mem[_3818 + 164 len mem[_3818] + 32]
                                else:
                                    mem[floor32(mem[_3818]) + _3818 + 196] = mem[floor32(mem[_3818]) + _3818 + -(mem[_3818] % 32) + 228 len mem[_3818] % 32]
                                    require ext_code.size(address(_3817))
                                    call address(_3817).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3541, address(_3633), 128, mem[_3818], mem[_3818 + 196 len floor32(mem[_3818]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3709 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3710 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3710 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3710 + 36] = _3541
                                mem[_3710 + 68] = 0
                                mem[_3710 + 100] = this.address
                                mem[_3710 + 132] = 128
                                mem[_3710 + 164] = mem[_3710]
                                s = 0
                                while s < mem[_3710]:
                                    mem[_3710 + s + 196] = mem[_3710 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3710] % 32:
                                    require ext_code.size(address(_3709))
                                    call address(_3709).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3541, 0, address(this.address), 128, mem[_3710 + 164 len mem[_3710] + 32]
                                else:
                                    mem[floor32(mem[_3710]) + _3710 + 196] = mem[floor32(mem[_3710]) + _3710 + -(mem[_3710] % 32) + 228 len mem[_3710] % 32]
                                    require ext_code.size(address(_3709))
                                    call address(_3709).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3541, 0, address(this.address), 128, mem[_3710], mem[_3710 + 196 len floor32(mem[_3710]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3635 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3822 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3823 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3823 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3823 + 36] = _3541
                                mem[_3823 + 68] = 0
                                mem[_3823 + 100] = address(_3635)
                                mem[_3823 + 132] = 128
                                mem[_3823 + 164] = mem[_3823]
                                s = 0
                                while s < mem[_3823]:
                                    mem[_3823 + s + 196] = mem[_3823 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3823] % 32:
                                    require ext_code.size(address(_3822))
                                    call address(_3822).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3541, 0, address(_3635), 128, mem[_3823 + 164 len mem[_3823] + 32]
                                else:
                                    mem[floor32(mem[_3823]) + _3823 + 196] = mem[floor32(mem[_3823]) + _3823 + -(mem[_3823] % 32) + 228 len mem[_3823] % 32]
                                    require ext_code.size(address(_3822))
                                    call address(_3822).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3541, 0, address(_3635), 128, mem[_3823], mem[_3823 + 196 len floor32(mem[_3823]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        _3542 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3712 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3713 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3713 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3713 + 36] = 0
                                mem[_3713 + 68] = _3542
                                mem[_3713 + 100] = this.address
                                mem[_3713 + 132] = 128
                                mem[_3713 + 164] = mem[_3713]
                                s = 0
                                while s < mem[_3713]:
                                    mem[_3713 + s + 196] = mem[_3713 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3713] % 32:
                                    require ext_code.size(address(_3712))
                                    call address(_3712).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3542, address(this.address), 128, mem[_3713 + 164 len mem[_3713] + 32]
                                else:
                                    mem[floor32(mem[_3713]) + _3713 + 196] = mem[floor32(mem[_3713]) + _3713 + -(mem[_3713] % 32) + 228 len mem[_3713] % 32]
                                    require ext_code.size(address(_3712))
                                    call address(_3712).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3542, address(this.address), 128, mem[_3713], mem[_3713 + 196 len floor32(mem[_3713]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3637 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3827 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3828 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3828 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3828 + 36] = 0
                                mem[_3828 + 68] = _3542
                                mem[_3828 + 100] = address(_3637)
                                mem[_3828 + 132] = 128
                                mem[_3828 + 164] = mem[_3828]
                                s = 0
                                while s < mem[_3828]:
                                    mem[_3828 + s + 196] = mem[_3828 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3828] % 32:
                                    require ext_code.size(address(_3827))
                                    call address(_3827).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3542, address(_3637), 128, mem[_3828 + 164 len mem[_3828] + 32]
                                else:
                                    mem[floor32(mem[_3828]) + _3828 + 196] = mem[floor32(mem[_3828]) + _3828 + -(mem[_3828] % 32) + 228 len mem[_3828] % 32]
                                    require ext_code.size(address(_3827))
                                    call address(_3827).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3542, address(_3637), 128, mem[_3828], mem[_3828 + 196 len floor32(mem[_3828]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3715 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3716 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3716 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3716 + 36] = _3542
                                mem[_3716 + 68] = 0
                                mem[_3716 + 100] = this.address
                                mem[_3716 + 132] = 128
                                mem[_3716 + 164] = mem[_3716]
                                s = 0
                                while s < mem[_3716]:
                                    mem[_3716 + s + 196] = mem[_3716 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3716] % 32:
                                    require ext_code.size(address(_3715))
                                    call address(_3715).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3542, 0, address(this.address), 128, mem[_3716 + 164 len mem[_3716] + 32]
                                else:
                                    mem[floor32(mem[_3716]) + _3716 + 196] = mem[floor32(mem[_3716]) + _3716 + -(mem[_3716] % 32) + 228 len mem[_3716] % 32]
                                    require ext_code.size(address(_3715))
                                    call address(_3715).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3542, 0, address(this.address), 128, mem[_3716], mem[_3716 + 196 len floor32(mem[_3716]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3639 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3832 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3833 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3833 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3833 + 36] = _3542
                                mem[_3833 + 68] = 0
                                mem[_3833 + 100] = address(_3639)
                                mem[_3833 + 132] = 128
                                mem[_3833 + 164] = mem[_3833]
                                s = 0
                                while s < mem[_3833]:
                                    mem[_3833 + s + 196] = mem[_3833 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3833] % 32:
                                    require ext_code.size(address(_3832))
                                    call address(_3832).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3542, 0, address(_3639), 128, mem[_3833 + 164 len mem[_3833] + 32]
                                else:
                                    mem[floor32(mem[_3833]) + _3833 + 196] = mem[floor32(mem[_3833]) + _3833 + -(mem[_3833] % 32) + 228 len mem[_3833] % 32]
                                    require ext_code.size(address(_3832))
                                    call address(_3832).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3542, 0, address(_3639), 128, mem[_3833], mem[_3833 + 196 len floor32(mem[_3833]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                if not mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 356]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                idx = 0
                while idx < arg2.length - 1:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        _3543 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3718 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3719 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3719 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3719 + 36] = 0
                                mem[_3719 + 68] = _3543
                                mem[_3719 + 100] = this.address
                                mem[_3719 + 132] = 128
                                mem[_3719 + 164] = mem[_3719]
                                s = 0
                                while s < mem[_3719]:
                                    mem[_3719 + s + 196] = mem[_3719 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3719] % 32:
                                    require ext_code.size(address(_3718))
                                    call address(_3718).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3543, address(this.address), 128, mem[_3719 + 164 len mem[_3719] + 32]
                                else:
                                    mem[floor32(mem[_3719]) + _3719 + 196] = mem[floor32(mem[_3719]) + _3719 + -(mem[_3719] % 32) + 228 len mem[_3719] % 32]
                                    require ext_code.size(address(_3718))
                                    call address(_3718).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3543, address(this.address), 128, mem[_3719], mem[_3719 + 196 len floor32(mem[_3719]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3641 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3837 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3838 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3838 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3838 + 36] = 0
                                mem[_3838 + 68] = _3543
                                mem[_3838 + 100] = address(_3641)
                                mem[_3838 + 132] = 128
                                mem[_3838 + 164] = mem[_3838]
                                s = 0
                                while s < mem[_3838]:
                                    mem[_3838 + s + 196] = mem[_3838 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3838] % 32:
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3543, address(_3641), 128, mem[_3838 + 164 len mem[_3838] + 32]
                                else:
                                    mem[floor32(mem[_3838]) + _3838 + 196] = mem[floor32(mem[_3838]) + _3838 + -(mem[_3838] % 32) + 228 len mem[_3838] % 32]
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3543, address(_3641), 128, mem[_3838], mem[_3838 + 196 len floor32(mem[_3838]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3721 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3722 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3722 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3722 + 36] = _3543
                                mem[_3722 + 68] = 0
                                mem[_3722 + 100] = this.address
                                mem[_3722 + 132] = 128
                                mem[_3722 + 164] = mem[_3722]
                                s = 0
                                while s < mem[_3722]:
                                    mem[_3722 + s + 196] = mem[_3722 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3722] % 32:
                                    require ext_code.size(address(_3721))
                                    call address(_3721).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3543, 0, address(this.address), 128, mem[_3722 + 164 len mem[_3722] + 32]
                                else:
                                    mem[floor32(mem[_3722]) + _3722 + 196] = mem[floor32(mem[_3722]) + _3722 + -(mem[_3722] % 32) + 228 len mem[_3722] % 32]
                                    require ext_code.size(address(_3721))
                                    call address(_3721).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3543, 0, address(this.address), 128, mem[_3722], mem[_3722 + 196 len floor32(mem[_3722]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3643 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3842 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3843 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3843 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3843 + 36] = _3543
                                mem[_3843 + 68] = 0
                                mem[_3843 + 100] = address(_3643)
                                mem[_3843 + 132] = 128
                                mem[_3843 + 164] = mem[_3843]
                                s = 0
                                while s < mem[_3843]:
                                    mem[_3843 + s + 196] = mem[_3843 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3843] % 32:
                                    require ext_code.size(address(_3842))
                                    call address(_3842).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3543, 0, address(_3643), 128, mem[_3843 + 164 len mem[_3843] + 32]
                                else:
                                    mem[floor32(mem[_3843]) + _3843 + 196] = mem[floor32(mem[_3843]) + _3843 + -(mem[_3843] % 32) + 228 len mem[_3843] % 32]
                                    require ext_code.size(address(_3842))
                                    call address(_3842).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3543, 0, address(_3643), 128, mem[_3843], mem[_3843 + 196 len floor32(mem[_3843]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        _3544 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3724 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3725 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3725 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3725 + 36] = 0
                                mem[_3725 + 68] = _3544
                                mem[_3725 + 100] = this.address
                                mem[_3725 + 132] = 128
                                mem[_3725 + 164] = mem[_3725]
                                s = 0
                                while s < mem[_3725]:
                                    mem[_3725 + s + 196] = mem[_3725 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3725] % 32:
                                    require ext_code.size(address(_3724))
                                    call address(_3724).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3544, address(this.address), 128, mem[_3725 + 164 len mem[_3725] + 32]
                                else:
                                    mem[floor32(mem[_3725]) + _3725 + 196] = mem[floor32(mem[_3725]) + _3725 + -(mem[_3725] % 32) + 228 len mem[_3725] % 32]
                                    require ext_code.size(address(_3724))
                                    call address(_3724).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3544, address(this.address), 128, mem[_3725], mem[_3725 + 196 len floor32(mem[_3725]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3645 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3847 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3848 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3848 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3848 + 36] = 0
                                mem[_3848 + 68] = _3544
                                mem[_3848 + 100] = address(_3645)
                                mem[_3848 + 132] = 128
                                mem[_3848 + 164] = mem[_3848]
                                s = 0
                                while s < mem[_3848]:
                                    mem[_3848 + s + 196] = mem[_3848 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3848] % 32:
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3544, address(_3645), 128, mem[_3848 + 164 len mem[_3848] + 32]
                                else:
                                    mem[floor32(mem[_3848]) + _3848 + 196] = mem[floor32(mem[_3848]) + _3848 + -(mem[_3848] % 32) + 228 len mem[_3848] % 32]
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3544, address(_3645), 128, mem[_3848], mem[_3848 + 196 len floor32(mem[_3848]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3727 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3728 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3728 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3728 + 36] = _3544
                                mem[_3728 + 68] = 0
                                mem[_3728 + 100] = this.address
                                mem[_3728 + 132] = 128
                                mem[_3728 + 164] = mem[_3728]
                                s = 0
                                while s < mem[_3728]:
                                    mem[_3728 + s + 196] = mem[_3728 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3728] % 32:
                                    require ext_code.size(address(_3727))
                                    call address(_3727).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3544, 0, address(this.address), 128, mem[_3728 + 164 len mem[_3728] + 32]
                                else:
                                    mem[floor32(mem[_3728]) + _3728 + 196] = mem[floor32(mem[_3728]) + _3728 + -(mem[_3728] % 32) + 228 len mem[_3728] % 32]
                                    require ext_code.size(address(_3727))
                                    call address(_3727).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3544, 0, address(this.address), 128, mem[_3728], mem[_3728 + 196 len floor32(mem[_3728]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3647 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3852 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3853 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3853 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3853 + 36] = _3544
                                mem[_3853 + 68] = 0
                                mem[_3853 + 100] = address(_3647)
                                mem[_3853 + 132] = 128
                                mem[_3853 + 164] = mem[_3853]
                                s = 0
                                while s < mem[_3853]:
                                    mem[_3853 + s + 196] = mem[_3853 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3853] % 32:
                                    require ext_code.size(address(_3852))
                                    call address(_3852).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3544, 0, address(_3647), 128, mem[_3853 + 164 len mem[_3853] + 32]
                                else:
                                    mem[floor32(mem[_3853]) + _3853 + 196] = mem[floor32(mem[_3853]) + _3853 + -(mem[_3853] % 32) + 228 len mem[_3853] % 32]
                                    require ext_code.size(address(_3852))
                                    call address(_3852).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3544, 0, address(_3647), 128, mem[_3853], mem[_3853 + 196 len floor32(mem[_3853]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    else:
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 32 * arg2.length] = code.data[5493 len 32 * arg2.length]
        require 0 < arg2.length
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = arg1
        idx = 0
        while idx < arg2.length - 1:
            require idx < mem[(32 * arg2.length) + 128]
            require idx < arg2.length
            _1291 = mem[(32 * idx) + 128]
            require idx + 1 < arg2.length
            _1300 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 
                            32,
                            35,
                            0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 327 len 29]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * arg2.length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * arg2.length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                if mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 333 len 23]
                if address(_1291) == address(_1291):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 330 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 330 len 26]
                    if not -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) / -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 330 len 26]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 330 len 26]
                    if not -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) / -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * arg2.length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * arg2.length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                if mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 333 len 23]
                if address(_1291) == address(_1300):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 330 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 330 len 26]
                    if not -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) / -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 330 len 26]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 330 len 26]
                    if not -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) / -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
            idx = idx + 1
            continue 
        require mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] - 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
        if mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] - 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] <= arg1:
            revert with 0, 'ct_alt'
        require 0 < arg2.length
        require 0 < mem[(32 * arg2.length) + 128]
        require 0 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
        mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 260] = mem[(32 * arg2.length) + 172 len 20]
        mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 292] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
        mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 68
        mem[64] = (64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 324
        mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len 4] = transfer(address arg1, uint256 arg2)
        mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 324 len 64] = 0, mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 260 len 60]
        mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 416 len 4] = mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 312 len 4]
        call mem[140 len 20].mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 288 len 4] with:
             gas gas_remaining wei
            args mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 292], mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 288 len 28], mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not arg2.length:
                idx = 0
                while idx < arg2.length - 1:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        _3545 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3730 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3731 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3731 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3731 + 36] = 0
                                mem[_3731 + 68] = _3545
                                mem[_3731 + 100] = this.address
                                mem[_3731 + 132] = 128
                                mem[_3731 + 164] = mem[_3731]
                                s = 0
                                while s < mem[_3731]:
                                    mem[_3731 + s + 196] = mem[_3731 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3731] % 32:
                                    require ext_code.size(address(_3730))
                                    call address(_3730).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3545, address(this.address), 128, mem[_3731 + 164 len mem[_3731] + 32]
                                else:
                                    mem[floor32(mem[_3731]) + _3731 + 196] = mem[floor32(mem[_3731]) + _3731 + -(mem[_3731] % 32) + 228 len mem[_3731] % 32]
                                    require ext_code.size(address(_3730))
                                    call address(_3730).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3545, address(this.address), 128, mem[_3731], mem[_3731 + 196 len floor32(mem[_3731]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3649 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3857 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3858 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3858 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3858 + 36] = 0
                                mem[_3858 + 68] = _3545
                                mem[_3858 + 100] = address(_3649)
                                mem[_3858 + 132] = 128
                                mem[_3858 + 164] = mem[_3858]
                                s = 0
                                while s < mem[_3858]:
                                    mem[_3858 + s + 196] = mem[_3858 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3858] % 32:
                                    require ext_code.size(address(_3857))
                                    call address(_3857).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3545, address(_3649), 128, mem[_3858 + 164 len mem[_3858] + 32]
                                else:
                                    mem[floor32(mem[_3858]) + _3858 + 196] = mem[floor32(mem[_3858]) + _3858 + -(mem[_3858] % 32) + 228 len mem[_3858] % 32]
                                    require ext_code.size(address(_3857))
                                    call address(_3857).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3545, address(_3649), 128, mem[_3858], mem[_3858 + 196 len floor32(mem[_3858]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3733 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3734 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3734 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3734 + 36] = _3545
                                mem[_3734 + 68] = 0
                                mem[_3734 + 100] = this.address
                                mem[_3734 + 132] = 128
                                mem[_3734 + 164] = mem[_3734]
                                s = 0
                                while s < mem[_3734]:
                                    mem[_3734 + s + 196] = mem[_3734 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3734] % 32:
                                    require ext_code.size(address(_3733))
                                    call address(_3733).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3545, 0, address(this.address), 128, mem[_3734 + 164 len mem[_3734] + 32]
                                else:
                                    mem[floor32(mem[_3734]) + _3734 + 196] = mem[floor32(mem[_3734]) + _3734 + -(mem[_3734] % 32) + 228 len mem[_3734] % 32]
                                    require ext_code.size(address(_3733))
                                    call address(_3733).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3545, 0, address(this.address), 128, mem[_3734], mem[_3734 + 196 len floor32(mem[_3734]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3651 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3862 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3863 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3863 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3863 + 36] = _3545
                                mem[_3863 + 68] = 0
                                mem[_3863 + 100] = address(_3651)
                                mem[_3863 + 132] = 128
                                mem[_3863 + 164] = mem[_3863]
                                s = 0
                                while s < mem[_3863]:
                                    mem[_3863 + s + 196] = mem[_3863 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3863] % 32:
                                    require ext_code.size(address(_3862))
                                    call address(_3862).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3545, 0, address(_3651), 128, mem[_3863 + 164 len mem[_3863] + 32]
                                else:
                                    mem[floor32(mem[_3863]) + _3863 + 196] = mem[floor32(mem[_3863]) + _3863 + -(mem[_3863] % 32) + 228 len mem[_3863] % 32]
                                    require ext_code.size(address(_3862))
                                    call address(_3862).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3545, 0, address(_3651), 128, mem[_3863], mem[_3863 + 196 len floor32(mem[_3863]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        _3546 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3736 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3737 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3737 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3737 + 36] = 0
                                mem[_3737 + 68] = _3546
                                mem[_3737 + 100] = this.address
                                mem[_3737 + 132] = 128
                                mem[_3737 + 164] = mem[_3737]
                                s = 0
                                while s < mem[_3737]:
                                    mem[_3737 + s + 196] = mem[_3737 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3737] % 32:
                                    require ext_code.size(address(_3736))
                                    call address(_3736).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3546, address(this.address), 128, mem[_3737 + 164 len mem[_3737] + 32]
                                else:
                                    mem[floor32(mem[_3737]) + _3737 + 196] = mem[floor32(mem[_3737]) + _3737 + -(mem[_3737] % 32) + 228 len mem[_3737] % 32]
                                    require ext_code.size(address(_3736))
                                    call address(_3736).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3546, address(this.address), 128, mem[_3737], mem[_3737 + 196 len floor32(mem[_3737]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3653 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3867 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3868 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3868 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3868 + 36] = 0
                                mem[_3868 + 68] = _3546
                                mem[_3868 + 100] = address(_3653)
                                mem[_3868 + 132] = 128
                                mem[_3868 + 164] = mem[_3868]
                                s = 0
                                while s < mem[_3868]:
                                    mem[_3868 + s + 196] = mem[_3868 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3868] % 32:
                                    require ext_code.size(address(_3867))
                                    call address(_3867).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3546, address(_3653), 128, mem[_3868 + 164 len mem[_3868] + 32]
                                else:
                                    mem[floor32(mem[_3868]) + _3868 + 196] = mem[floor32(mem[_3868]) + _3868 + -(mem[_3868] % 32) + 228 len mem[_3868] % 32]
                                    require ext_code.size(address(_3867))
                                    call address(_3867).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3546, address(_3653), 128, mem[_3868], mem[_3868 + 196 len floor32(mem[_3868]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3739 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3740 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3740 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3740 + 36] = _3546
                                mem[_3740 + 68] = 0
                                mem[_3740 + 100] = this.address
                                mem[_3740 + 132] = 128
                                mem[_3740 + 164] = mem[_3740]
                                s = 0
                                while s < mem[_3740]:
                                    mem[_3740 + s + 196] = mem[_3740 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3740] % 32:
                                    require ext_code.size(address(_3739))
                                    call address(_3739).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3546, 0, address(this.address), 128, mem[_3740 + 164 len mem[_3740] + 32]
                                else:
                                    mem[floor32(mem[_3740]) + _3740 + 196] = mem[floor32(mem[_3740]) + _3740 + -(mem[_3740] % 32) + 228 len mem[_3740] % 32]
                                    require ext_code.size(address(_3739))
                                    call address(_3739).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3546, 0, address(this.address), 128, mem[_3740], mem[_3740 + 196 len floor32(mem[_3740]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3655 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3872 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3873 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3873 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3873 + 36] = _3546
                                mem[_3873 + 68] = 0
                                mem[_3873 + 100] = address(_3655)
                                mem[_3873 + 132] = 128
                                mem[_3873 + 164] = mem[_3873]
                                s = 0
                                while s < mem[_3873]:
                                    mem[_3873 + s + 196] = mem[_3873 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3873] % 32:
                                    require ext_code.size(address(_3872))
                                    call address(_3872).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3546, 0, address(_3655), 128, mem[_3873 + 164 len mem[_3873] + 32]
                                else:
                                    mem[floor32(mem[_3873]) + _3873 + 196] = mem[floor32(mem[_3873]) + _3873 + -(mem[_3873] % 32) + 228 len mem[_3873] % 32]
                                    require ext_code.size(address(_3872))
                                    call address(_3872).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3546, 0, address(_3655), 128, mem[_3873], mem[_3873 + 196 len floor32(mem[_3873]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require arg2.length >= 32
                if not mem[128]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                idx = 0
                while idx < arg2.length - 1:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        _3547 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3742 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3743 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3743 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3743 + 36] = 0
                                mem[_3743 + 68] = _3547
                                mem[_3743 + 100] = this.address
                                mem[_3743 + 132] = 128
                                mem[_3743 + 164] = mem[_3743]
                                s = 0
                                while s < mem[_3743]:
                                    mem[_3743 + s + 196] = mem[_3743 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3743] % 32:
                                    require ext_code.size(address(_3742))
                                    call address(_3742).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3547, address(this.address), 128, mem[_3743 + 164 len mem[_3743] + 32]
                                else:
                                    mem[floor32(mem[_3743]) + _3743 + 196] = mem[floor32(mem[_3743]) + _3743 + -(mem[_3743] % 32) + 228 len mem[_3743] % 32]
                                    require ext_code.size(address(_3742))
                                    call address(_3742).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3547, address(this.address), 128, mem[_3743], mem[_3743 + 196 len floor32(mem[_3743]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3657 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3877 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3878 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3878 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3878 + 36] = 0
                                mem[_3878 + 68] = _3547
                                mem[_3878 + 100] = address(_3657)
                                mem[_3878 + 132] = 128
                                mem[_3878 + 164] = mem[_3878]
                                s = 0
                                while s < mem[_3878]:
                                    mem[_3878 + s + 196] = mem[_3878 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3878] % 32:
                                    require ext_code.size(address(_3877))
                                    call address(_3877).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3547, address(_3657), 128, mem[_3878 + 164 len mem[_3878] + 32]
                                else:
                                    mem[floor32(mem[_3878]) + _3878 + 196] = mem[floor32(mem[_3878]) + _3878 + -(mem[_3878] % 32) + 228 len mem[_3878] % 32]
                                    require ext_code.size(address(_3877))
                                    call address(_3877).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3547, address(_3657), 128, mem[_3878], mem[_3878 + 196 len floor32(mem[_3878]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3745 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3746 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3746 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3746 + 36] = _3547
                                mem[_3746 + 68] = 0
                                mem[_3746 + 100] = this.address
                                mem[_3746 + 132] = 128
                                mem[_3746 + 164] = mem[_3746]
                                s = 0
                                while s < mem[_3746]:
                                    mem[_3746 + s + 196] = mem[_3746 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3746] % 32:
                                    require ext_code.size(address(_3745))
                                    call address(_3745).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3547, 0, address(this.address), 128, mem[_3746 + 164 len mem[_3746] + 32]
                                else:
                                    mem[floor32(mem[_3746]) + _3746 + 196] = mem[floor32(mem[_3746]) + _3746 + -(mem[_3746] % 32) + 228 len mem[_3746] % 32]
                                    require ext_code.size(address(_3745))
                                    call address(_3745).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3547, 0, address(this.address), 128, mem[_3746], mem[_3746 + 196 len floor32(mem[_3746]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3659 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3882 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3883 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3883 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3883 + 36] = _3547
                                mem[_3883 + 68] = 0
                                mem[_3883 + 100] = address(_3659)
                                mem[_3883 + 132] = 128
                                mem[_3883 + 164] = mem[_3883]
                                s = 0
                                while s < mem[_3883]:
                                    mem[_3883 + s + 196] = mem[_3883 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3883] % 32:
                                    require ext_code.size(address(_3882))
                                    call address(_3882).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3547, 0, address(_3659), 128, mem[_3883 + 164 len mem[_3883] + 32]
                                else:
                                    mem[floor32(mem[_3883]) + _3883 + 196] = mem[floor32(mem[_3883]) + _3883 + -(mem[_3883] % 32) + 228 len mem[_3883] % 32]
                                    require ext_code.size(address(_3882))
                                    call address(_3882).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3547, 0, address(_3659), 128, mem[_3883], mem[_3883 + 196 len floor32(mem[_3883]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        _3548 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3748 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3749 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3749 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3749 + 36] = 0
                                mem[_3749 + 68] = _3548
                                mem[_3749 + 100] = this.address
                                mem[_3749 + 132] = 128
                                mem[_3749 + 164] = mem[_3749]
                                s = 0
                                while s < mem[_3749]:
                                    mem[_3749 + s + 196] = mem[_3749 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3749] % 32:
                                    require ext_code.size(address(_3748))
                                    call address(_3748).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3548, address(this.address), 128, mem[_3749 + 164 len mem[_3749] + 32]
                                else:
                                    mem[floor32(mem[_3749]) + _3749 + 196] = mem[floor32(mem[_3749]) + _3749 + -(mem[_3749] % 32) + 228 len mem[_3749] % 32]
                                    require ext_code.size(address(_3748))
                                    call address(_3748).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3548, address(this.address), 128, mem[_3749], mem[_3749 + 196 len floor32(mem[_3749]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3661 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3887 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3888 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3888 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3888 + 36] = 0
                                mem[_3888 + 68] = _3548
                                mem[_3888 + 100] = address(_3661)
                                mem[_3888 + 132] = 128
                                mem[_3888 + 164] = mem[_3888]
                                s = 0
                                while s < mem[_3888]:
                                    mem[_3888 + s + 196] = mem[_3888 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3888] % 32:
                                    require ext_code.size(address(_3887))
                                    call address(_3887).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3548, address(_3661), 128, mem[_3888 + 164 len mem[_3888] + 32]
                                else:
                                    mem[floor32(mem[_3888]) + _3888 + 196] = mem[floor32(mem[_3888]) + _3888 + -(mem[_3888] % 32) + 228 len mem[_3888] % 32]
                                    require ext_code.size(address(_3887))
                                    call address(_3887).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3548, address(_3661), 128, mem[_3888], mem[_3888 + 196 len floor32(mem[_3888]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3751 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3752 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3752 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3752 + 36] = _3548
                                mem[_3752 + 68] = 0
                                mem[_3752 + 100] = this.address
                                mem[_3752 + 132] = 128
                                mem[_3752 + 164] = mem[_3752]
                                s = 0
                                while s < mem[_3752]:
                                    mem[_3752 + s + 196] = mem[_3752 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3752] % 32:
                                    require ext_code.size(address(_3751))
                                    call address(_3751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3548, 0, address(this.address), 128, mem[_3752 + 164 len mem[_3752] + 32]
                                else:
                                    mem[floor32(mem[_3752]) + _3752 + 196] = mem[floor32(mem[_3752]) + _3752 + -(mem[_3752] % 32) + 228 len mem[_3752] % 32]
                                    require ext_code.size(address(_3751))
                                    call address(_3751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3548, 0, address(this.address), 128, mem[_3752], mem[_3752 + 196 len floor32(mem[_3752]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3663 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3892 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3893 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3893 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3893 + 36] = _3548
                                mem[_3893 + 68] = 0
                                mem[_3893 + 100] = address(_3663)
                                mem[_3893 + 132] = 128
                                mem[_3893 + 164] = mem[_3893]
                                s = 0
                                while s < mem[_3893]:
                                    mem[_3893 + s + 196] = mem[_3893 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3893] % 32:
                                    require ext_code.size(address(_3892))
                                    call address(_3892).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3548, 0, address(_3663), 128, mem[_3893 + 164 len mem[_3893] + 32]
                                else:
                                    mem[floor32(mem[_3893]) + _3893 + 196] = mem[floor32(mem[_3893]) + _3893 + -(mem[_3893] % 32) + 228 len mem[_3893] % 32]
                                    require ext_code.size(address(_3892))
                                    call address(_3892).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3548, 0, address(_3663), 128, mem[_3893], mem[_3893 + 196 len floor32(mem[_3893]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            mem[64] = (64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 325
            mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 324] = return_data.size
            mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not return_data.size:
                idx = 0
                while idx < arg2.length - 1:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        _3549 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3754 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3755 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3755 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3755 + 36] = 0
                                mem[_3755 + 68] = _3549
                                mem[_3755 + 100] = this.address
                                mem[_3755 + 132] = 128
                                mem[_3755 + 164] = mem[_3755]
                                s = 0
                                while s < mem[_3755]:
                                    mem[_3755 + s + 196] = mem[_3755 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3755] % 32:
                                    require ext_code.size(address(_3754))
                                    call address(_3754).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3549, address(this.address), 128, mem[_3755 + 164 len mem[_3755] + 32]
                                else:
                                    mem[floor32(mem[_3755]) + _3755 + 196] = mem[floor32(mem[_3755]) + _3755 + -(mem[_3755] % 32) + 228 len mem[_3755] % 32]
                                    require ext_code.size(address(_3754))
                                    call address(_3754).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3549, address(this.address), 128, mem[_3755], mem[_3755 + 196 len floor32(mem[_3755]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3665 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3897 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3898 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3898 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3898 + 36] = 0
                                mem[_3898 + 68] = _3549
                                mem[_3898 + 100] = address(_3665)
                                mem[_3898 + 132] = 128
                                mem[_3898 + 164] = mem[_3898]
                                s = 0
                                while s < mem[_3898]:
                                    mem[_3898 + s + 196] = mem[_3898 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3898] % 32:
                                    require ext_code.size(address(_3897))
                                    call address(_3897).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3549, address(_3665), 128, mem[_3898 + 164 len mem[_3898] + 32]
                                else:
                                    mem[floor32(mem[_3898]) + _3898 + 196] = mem[floor32(mem[_3898]) + _3898 + -(mem[_3898] % 32) + 228 len mem[_3898] % 32]
                                    require ext_code.size(address(_3897))
                                    call address(_3897).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3549, address(_3665), 128, mem[_3898], mem[_3898 + 196 len floor32(mem[_3898]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3757 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3758 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3758 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3758 + 36] = _3549
                                mem[_3758 + 68] = 0
                                mem[_3758 + 100] = this.address
                                mem[_3758 + 132] = 128
                                mem[_3758 + 164] = mem[_3758]
                                s = 0
                                while s < mem[_3758]:
                                    mem[_3758 + s + 196] = mem[_3758 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3758] % 32:
                                    require ext_code.size(address(_3757))
                                    call address(_3757).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3549, 0, address(this.address), 128, mem[_3758 + 164 len mem[_3758] + 32]
                                else:
                                    mem[floor32(mem[_3758]) + _3758 + 196] = mem[floor32(mem[_3758]) + _3758 + -(mem[_3758] % 32) + 228 len mem[_3758] % 32]
                                    require ext_code.size(address(_3757))
                                    call address(_3757).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3549, 0, address(this.address), 128, mem[_3758], mem[_3758 + 196 len floor32(mem[_3758]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3667 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3902 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3903 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3903 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3903 + 36] = _3549
                                mem[_3903 + 68] = 0
                                mem[_3903 + 100] = address(_3667)
                                mem[_3903 + 132] = 128
                                mem[_3903 + 164] = mem[_3903]
                                s = 0
                                while s < mem[_3903]:
                                    mem[_3903 + s + 196] = mem[_3903 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3903] % 32:
                                    require ext_code.size(address(_3902))
                                    call address(_3902).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3549, 0, address(_3667), 128, mem[_3903 + 164 len mem[_3903] + 32]
                                else:
                                    mem[floor32(mem[_3903]) + _3903 + 196] = mem[floor32(mem[_3903]) + _3903 + -(mem[_3903] % 32) + 228 len mem[_3903] % 32]
                                    require ext_code.size(address(_3902))
                                    call address(_3902).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3549, 0, address(_3667), 128, mem[_3903], mem[_3903 + 196 len floor32(mem[_3903]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        _3550 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3760 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3761 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3761 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3761 + 36] = 0
                                mem[_3761 + 68] = _3550
                                mem[_3761 + 100] = this.address
                                mem[_3761 + 132] = 128
                                mem[_3761 + 164] = mem[_3761]
                                s = 0
                                while s < mem[_3761]:
                                    mem[_3761 + s + 196] = mem[_3761 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3761] % 32:
                                    require ext_code.size(address(_3760))
                                    call address(_3760).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3550, address(this.address), 128, mem[_3761 + 164 len mem[_3761] + 32]
                                else:
                                    mem[floor32(mem[_3761]) + _3761 + 196] = mem[floor32(mem[_3761]) + _3761 + -(mem[_3761] % 32) + 228 len mem[_3761] % 32]
                                    require ext_code.size(address(_3760))
                                    call address(_3760).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3550, address(this.address), 128, mem[_3761], mem[_3761 + 196 len floor32(mem[_3761]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3669 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3907 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3908 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3908 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3908 + 36] = 0
                                mem[_3908 + 68] = _3550
                                mem[_3908 + 100] = address(_3669)
                                mem[_3908 + 132] = 128
                                mem[_3908 + 164] = mem[_3908]
                                s = 0
                                while s < mem[_3908]:
                                    mem[_3908 + s + 196] = mem[_3908 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3908] % 32:
                                    require ext_code.size(address(_3907))
                                    call address(_3907).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3550, address(_3669), 128, mem[_3908 + 164 len mem[_3908] + 32]
                                else:
                                    mem[floor32(mem[_3908]) + _3908 + 196] = mem[floor32(mem[_3908]) + _3908 + -(mem[_3908] % 32) + 228 len mem[_3908] % 32]
                                    require ext_code.size(address(_3907))
                                    call address(_3907).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3550, address(_3669), 128, mem[_3908], mem[_3908 + 196 len floor32(mem[_3908]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3763 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3764 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3764 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3764 + 36] = _3550
                                mem[_3764 + 68] = 0
                                mem[_3764 + 100] = this.address
                                mem[_3764 + 132] = 128
                                mem[_3764 + 164] = mem[_3764]
                                s = 0
                                while s < mem[_3764]:
                                    mem[_3764 + s + 196] = mem[_3764 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3764] % 32:
                                    require ext_code.size(address(_3763))
                                    call address(_3763).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3550, 0, address(this.address), 128, mem[_3764 + 164 len mem[_3764] + 32]
                                else:
                                    mem[floor32(mem[_3764]) + _3764 + 196] = mem[floor32(mem[_3764]) + _3764 + -(mem[_3764] % 32) + 228 len mem[_3764] % 32]
                                    require ext_code.size(address(_3763))
                                    call address(_3763).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3550, 0, address(this.address), 128, mem[_3764], mem[_3764 + 196 len floor32(mem[_3764]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3671 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3912 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3913 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3913 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3913 + 36] = _3550
                                mem[_3913 + 68] = 0
                                mem[_3913 + 100] = address(_3671)
                                mem[_3913 + 132] = 128
                                mem[_3913 + 164] = mem[_3913]
                                s = 0
                                while s < mem[_3913]:
                                    mem[_3913 + s + 196] = mem[_3913 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3913] % 32:
                                    require ext_code.size(address(_3912))
                                    call address(_3912).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3550, 0, address(_3671), 128, mem[_3913 + 164 len mem[_3913] + 32]
                                else:
                                    mem[floor32(mem[_3913]) + _3913 + 196] = mem[floor32(mem[_3913]) + _3913 + -(mem[_3913] % 32) + 228 len mem[_3913] % 32]
                                    require ext_code.size(address(_3912))
                                    call address(_3912).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3550, 0, address(_3671), 128, mem[_3913], mem[_3913 + 196 len floor32(mem[_3913]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                if not mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 356]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                idx = 0
                while idx < arg2.length - 1:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        _3551 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3766 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3767 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3767 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3767 + 36] = 0
                                mem[_3767 + 68] = _3551
                                mem[_3767 + 100] = this.address
                                mem[_3767 + 132] = 128
                                mem[_3767 + 164] = mem[_3767]
                                s = 0
                                while s < mem[_3767]:
                                    mem[_3767 + s + 196] = mem[_3767 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3767] % 32:
                                    require ext_code.size(address(_3766))
                                    call address(_3766).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3551, address(this.address), 128, mem[_3767 + 164 len mem[_3767] + 32]
                                else:
                                    mem[floor32(mem[_3767]) + _3767 + 196] = mem[floor32(mem[_3767]) + _3767 + -(mem[_3767] % 32) + 228 len mem[_3767] % 32]
                                    require ext_code.size(address(_3766))
                                    call address(_3766).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3551, address(this.address), 128, mem[_3767], mem[_3767 + 196 len floor32(mem[_3767]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3673 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3917 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3918 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3918 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3918 + 36] = 0
                                mem[_3918 + 68] = _3551
                                mem[_3918 + 100] = address(_3673)
                                mem[_3918 + 132] = 128
                                mem[_3918 + 164] = mem[_3918]
                                s = 0
                                while s < mem[_3918]:
                                    mem[_3918 + s + 196] = mem[_3918 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3918] % 32:
                                    require ext_code.size(address(_3917))
                                    call address(_3917).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3551, address(_3673), 128, mem[_3918 + 164 len mem[_3918] + 32]
                                else:
                                    mem[floor32(mem[_3918]) + _3918 + 196] = mem[floor32(mem[_3918]) + _3918 + -(mem[_3918] % 32) + 228 len mem[_3918] % 32]
                                    require ext_code.size(address(_3917))
                                    call address(_3917).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3551, address(_3673), 128, mem[_3918], mem[_3918 + 196 len floor32(mem[_3918]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3769 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3770 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3770 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3770 + 36] = _3551
                                mem[_3770 + 68] = 0
                                mem[_3770 + 100] = this.address
                                mem[_3770 + 132] = 128
                                mem[_3770 + 164] = mem[_3770]
                                s = 0
                                while s < mem[_3770]:
                                    mem[_3770 + s + 196] = mem[_3770 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3770] % 32:
                                    require ext_code.size(address(_3769))
                                    call address(_3769).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3551, 0, address(this.address), 128, mem[_3770 + 164 len mem[_3770] + 32]
                                else:
                                    mem[floor32(mem[_3770]) + _3770 + 196] = mem[floor32(mem[_3770]) + _3770 + -(mem[_3770] % 32) + 228 len mem[_3770] % 32]
                                    require ext_code.size(address(_3769))
                                    call address(_3769).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3551, 0, address(this.address), 128, mem[_3770], mem[_3770 + 196 len floor32(mem[_3770]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3675 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3922 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3923 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3923 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3923 + 36] = _3551
                                mem[_3923 + 68] = 0
                                mem[_3923 + 100] = address(_3675)
                                mem[_3923 + 132] = 128
                                mem[_3923 + 164] = mem[_3923]
                                s = 0
                                while s < mem[_3923]:
                                    mem[_3923 + s + 196] = mem[_3923 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3923] % 32:
                                    require ext_code.size(address(_3922))
                                    call address(_3922).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3551, 0, address(_3675), 128, mem[_3923 + 164 len mem[_3923] + 32]
                                else:
                                    mem[floor32(mem[_3923]) + _3923 + 196] = mem[floor32(mem[_3923]) + _3923 + -(mem[_3923] % 32) + 228 len mem[_3923] % 32]
                                    require ext_code.size(address(_3922))
                                    call address(_3922).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3551, 0, address(_3675), 128, mem[_3923], mem[_3923 + 196 len floor32(mem[_3923]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        _3552 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3772 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3773 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3773 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3773 + 36] = 0
                                mem[_3773 + 68] = _3552
                                mem[_3773 + 100] = this.address
                                mem[_3773 + 132] = 128
                                mem[_3773 + 164] = mem[_3773]
                                s = 0
                                while s < mem[_3773]:
                                    mem[_3773 + s + 196] = mem[_3773 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3773] % 32:
                                    require ext_code.size(address(_3772))
                                    call address(_3772).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3552, address(this.address), 128, mem[_3773 + 164 len mem[_3773] + 32]
                                else:
                                    mem[floor32(mem[_3773]) + _3773 + 196] = mem[floor32(mem[_3773]) + _3773 + -(mem[_3773] % 32) + 228 len mem[_3773] % 32]
                                    require ext_code.size(address(_3772))
                                    call address(_3772).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3552, address(this.address), 128, mem[_3773], mem[_3773 + 196 len floor32(mem[_3773]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3677 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3927 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3928 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3928 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3928 + 36] = 0
                                mem[_3928 + 68] = _3552
                                mem[_3928 + 100] = address(_3677)
                                mem[_3928 + 132] = 128
                                mem[_3928 + 164] = mem[_3928]
                                s = 0
                                while s < mem[_3928]:
                                    mem[_3928 + s + 196] = mem[_3928 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3928] % 32:
                                    require ext_code.size(address(_3927))
                                    call address(_3927).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3552, address(_3677), 128, mem[_3928 + 164 len mem[_3928] + 32]
                                else:
                                    mem[floor32(mem[_3928]) + _3928 + 196] = mem[floor32(mem[_3928]) + _3928 + -(mem[_3928] % 32) + 228 len mem[_3928] % 32]
                                    require ext_code.size(address(_3927))
                                    call address(_3927).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3552, address(_3677), 128, mem[_3928], mem[_3928 + 196 len floor32(mem[_3928]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3775 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3776 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3776 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3776 + 36] = _3552
                                mem[_3776 + 68] = 0
                                mem[_3776 + 100] = this.address
                                mem[_3776 + 132] = 128
                                mem[_3776 + 164] = mem[_3776]
                                s = 0
                                while s < mem[_3776]:
                                    mem[_3776 + s + 196] = mem[_3776 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3776] % 32:
                                    require ext_code.size(address(_3775))
                                    call address(_3775).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3552, 0, address(this.address), 128, mem[_3776 + 164 len mem[_3776] + 32]
                                else:
                                    mem[floor32(mem[_3776]) + _3776 + 196] = mem[floor32(mem[_3776]) + _3776 + -(mem[_3776] % 32) + 228 len mem[_3776] % 32]
                                    require ext_code.size(address(_3775))
                                    call address(_3775).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3552, 0, address(this.address), 128, mem[_3776], mem[_3776 + 196 len floor32(mem[_3776]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3679 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3932 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3933 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3933 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3933 + 36] = _3552
                                mem[_3933 + 68] = 0
                                mem[_3933 + 100] = address(_3679)
                                mem[_3933 + 132] = 128
                                mem[_3933 + 164] = mem[_3933]
                                s = 0
                                while s < mem[_3933]:
                                    mem[_3933 + s + 196] = mem[_3933 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3933] % 32:
                                    require ext_code.size(address(_3932))
                                    call address(_3932).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3552, 0, address(_3679), 128, mem[_3933 + 164 len mem[_3933] + 32]
                                else:
                                    mem[floor32(mem[_3933]) + _3933 + 196] = mem[floor32(mem[_3933]) + _3933 + -(mem[_3933] % 32) + 228 len mem[_3933] % 32]
                                    require ext_code.size(address(_3932))
                                    call address(_3932).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3552, 0, address(_3679), 128, mem[_3933], mem[_3933 + 196 len floor32(mem[_3933]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
}



}
