contract main {




// =====================  Runtime code  =====================


#
#  - testFee(address arg1, address arg2, uint256 arg3, uint256 arg4)
#  - testToken(address arg1, address arg2, uint256 arg3, uint256 arg4)
#
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
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
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

function swapPair(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require msg.sender == address(stor0)
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        require ext_code.size(arg1)
        staticcall arg1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg3 <= 0:
            revert with 0, 32, 41, 0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[305 len 23]
        if arg2 != ext_call.return_data[12 len 20]:
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 32, 38, 0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[302 len 26]
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 32, 38, 0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[302 len 26]
            if not -arg4 + 10000:
                if Mask(112, 0, ext_call.return_data[0]):
                    require Mask(112, 0, ext_call.return_data[0])
                    if 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                require 10000 * Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(arg1)
                staticcall arg1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, 0
            else:
                require -arg4 + 10000
                if (10000 * arg3) - (arg4 * arg3) / -arg4 + 10000 != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[0]):
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg3) - (arg4 * arg3) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg3) - (arg4 * arg3)
                    require ext_code.size(arg1)
                    staticcall arg1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg3) - (arg4 * arg3), 0, address(this.address), 128, 0
                else:
                    require Mask(112, 0, ext_call.return_data[0])
                    if (10000 * arg3 * Mask(112, 0, ext_call.return_data[0])) - (arg4 * arg3 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (10000 * arg3) - (arg4 * arg3):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg3) - (arg4 * arg3) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg3) - (arg4 * arg3)
                    require ext_code.size(arg1)
                    staticcall arg1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (10000 * arg3 * Mask(112, 0, ext_call.return_data[0])) - (arg4 * arg3 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg3) - (arg4 * arg3), 0, address(this.address), 128, 0
        else:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 32, 38, 0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[302 len 26]
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 32, 38, 0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[302 len 26]
            if not -arg4 + 10000:
                if Mask(112, 0, ext_call.return_data[32]):
                    require Mask(112, 0, ext_call.return_data[32])
                    if 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                require 10000 * Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(arg1)
                staticcall arg1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, 0
            else:
                require -arg4 + 10000
                if (10000 * arg3) - (arg4 * arg3) / -arg4 + 10000 != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg3) - (arg4 * arg3) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg3) - (arg4 * arg3)
                    require ext_code.size(arg1)
                    staticcall arg1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg3) - (arg4 * arg3), address(this.address), 128, 0
                else:
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10000 * arg3 * Mask(112, 0, ext_call.return_data[32])) - (arg4 * arg3 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (10000 * arg3) - (arg4 * arg3):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg3) - (arg4 * arg3) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg3) - (arg4 * arg3)
                    require ext_code.size(arg1)
                    staticcall arg1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (10000 * arg3 * Mask(112, 0, ext_call.return_data[32])) - (arg4 * arg3 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg3) - (arg4 * arg3), address(this.address), 128, 0
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
        require ext_code.size(arg1)
        staticcall arg1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg3 <= 0:
            revert with 0, 
                        32,
                        41,
                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                        mem[ceil32(return_data.size) + 306 len 23]
        if arg2 != ext_call.return_data[12 len 20]:
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[ceil32(return_data.size) + 303 len 26]
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[ceil32(return_data.size) + 303 len 26]
            if not -arg4 + 10000:
                if Mask(112, 0, ext_call.return_data[0]):
                    require Mask(112, 0, ext_call.return_data[0])
                    if 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                require 10000 * Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(arg1)
                staticcall arg1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, 0
            else:
                require -arg4 + 10000
                if (10000 * arg3) - (arg4 * arg3) / -arg4 + 10000 != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[0]):
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg3) - (arg4 * arg3) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg3) - (arg4 * arg3)
                    require ext_code.size(arg1)
                    staticcall arg1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg3) - (arg4 * arg3), 0, address(this.address), 128, 0
                else:
                    require Mask(112, 0, ext_call.return_data[0])
                    if (10000 * arg3 * Mask(112, 0, ext_call.return_data[0])) - (arg4 * arg3 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (10000 * arg3) - (arg4 * arg3):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg3) - (arg4 * arg3) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg3) - (arg4 * arg3)
                    require ext_code.size(arg1)
                    staticcall arg1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (10000 * arg3 * Mask(112, 0, ext_call.return_data[0])) - (arg4 * arg3 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg3) - (arg4 * arg3), 0, address(this.address), 128, 0
        else:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[ceil32(return_data.size) + 303 len 26]
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[ceil32(return_data.size) + 303 len 26]
            if not -arg4 + 10000:
                if Mask(112, 0, ext_call.return_data[32]):
                    require Mask(112, 0, ext_call.return_data[32])
                    if 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                require 10000 * Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(arg1)
                staticcall arg1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, 0
            else:
                require -arg4 + 10000
                if (10000 * arg3) - (arg4 * arg3) / -arg4 + 10000 != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg3) - (arg4 * arg3) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg3) - (arg4 * arg3)
                    require ext_code.size(arg1)
                    staticcall arg1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg3) - (arg4 * arg3), address(this.address), 128, 0
                else:
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10000 * arg3 * Mask(112, 0, ext_call.return_data[32])) - (arg4 * arg3 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (10000 * arg3) - (arg4 * arg3):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg3) - (arg4 * arg3) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg3) - (arg4 * arg3)
                    require ext_code.size(arg1)
                    staticcall arg1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (10000 * arg3 * Mask(112, 0, ext_call.return_data[32])) - (arg4 * arg3 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg3) - (arg4 * arg3), address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(ext_call.return_data[0])
}



}
