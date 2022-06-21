contract main {




// =====================  Runtime code  =====================


#
#  - sub_9f975624(?)
#  - sub_c5f66ed8(?)
#
address stor0;
address stor1;
mapping of uint256 callers;

function callers(address arg1) payable {
    require calldata.size - 4 >= 32
    return callers[arg1]
}

function _fallback() payable {
    revert
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    if not arg1:
        call stor0 with:
           value arg2 wei
             gas gas_remaining wei
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor0, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_43ded848(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == stor0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        callers[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_9b0a3cd4(?) payable {
    require calldata.size - 4 >= 128
    require callers[address(msg.sender)] == 1
    if arg1 == stor1:
        revert with 0, 'can not dump weth'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require callers[address(msg.sender)] == 1
    mem[96] = 2
    mem[128] = arg1
    mem[160] = arg2
    mem[192] = 1
    mem[224] = arg3
    mem[256] = 1
    mem[288] = arg4
    mem[0] = msg.sender
    mem[32] = 2
    require callers[address(msg.sender)] == 1
    mem[320] = 2
    mem[352 len 64] = call.data[calldata.size len 64]
    mem[352] = ext_call.return_data[0] - 1
    idx = 0
    while idx < 1:
        require idx < 1
        require idx < 2
        _1306 = mem[(32 * idx) + 128]
        require idx + 1 < 2
        _1311 = mem[(32 * idx + 1) + 128]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 32, 37, 0x48556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[521 len 27]
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(mem[(32 * idx) + 236 len 20])
            staticcall mem[(32 * idx) + 236 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[416 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < 2
            require idx < 1
            if mem[(32 * idx) + 352] <= 0:
                revert with 0, 32, 43, 0x64556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[527 len 21]
            if address(_1306) == address(_1306):
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[524 len 24]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[524 len 24]
                if not -mem[(32 * idx) + 288] + 10000:
                    if Mask(112, 0, ext_call.return_data[32]):
                        require Mask(112, 0, ext_call.return_data[32])
                        if 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require 10000 * Mask(112, 0, ext_call.return_data[0])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + 352] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                else:
                    require -mem[(32 * idx) + 288] + 10000
                    if (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352]) / -mem[(32 * idx) + 288] + 10000 != mem[(32 * idx) + 352]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352])
                        require idx + 1 < 2
                        mem[(32 * idx + 1) + 352] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if (10000 * mem[(32 * idx) + 352] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352])
                        require idx + 1 < 2
                        mem[(32 * idx + 1) + 352] = (10000 * mem[(32 * idx) + 352] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352])
            else:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[524 len 24]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[524 len 24]
                if not -mem[(32 * idx) + 288] + 10000:
                    if Mask(112, 0, ext_call.return_data[0]):
                        require Mask(112, 0, ext_call.return_data[0])
                        if 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require 10000 * Mask(112, 0, ext_call.return_data[32])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + 352] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                else:
                    require -mem[(32 * idx) + 288] + 10000
                    if (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352]) / -mem[(32 * idx) + 288] + 10000 != mem[(32 * idx) + 352]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352])
                        require idx + 1 < 2
                        mem[(32 * idx + 1) + 352] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if (10000 * mem[(32 * idx) + 352] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352])
                        require idx + 1 < 2
                        mem[(32 * idx + 1) + 352] = (10000 * mem[(32 * idx) + 352] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352])
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(mem[(32 * idx) + 236 len 20])
            staticcall mem[(32 * idx) + 236 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[416 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < 2
            require idx < 1
            if mem[(32 * idx) + 352] <= 0:
                revert with 0, 32, 43, 0x64556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[527 len 21]
            if address(_1306) == address(_1311):
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[524 len 24]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[524 len 24]
                if not -mem[(32 * idx) + 288] + 10000:
                    if Mask(112, 0, ext_call.return_data[32]):
                        require Mask(112, 0, ext_call.return_data[32])
                        if 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require 10000 * Mask(112, 0, ext_call.return_data[0])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + 352] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                else:
                    require -mem[(32 * idx) + 288] + 10000
                    if (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352]) / -mem[(32 * idx) + 288] + 10000 != mem[(32 * idx) + 352]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352])
                        require idx + 1 < 2
                        mem[(32 * idx + 1) + 352] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if (10000 * mem[(32 * idx) + 352] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352])
                        require idx + 1 < 2
                        mem[(32 * idx + 1) + 352] = (10000 * mem[(32 * idx) + 352] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352])
            else:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[524 len 24]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[524 len 24]
                if not -mem[(32 * idx) + 288] + 10000:
                    if Mask(112, 0, ext_call.return_data[0]):
                        require Mask(112, 0, ext_call.return_data[0])
                        if 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require 10000 * Mask(112, 0, ext_call.return_data[32])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + 352] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                else:
                    require -mem[(32 * idx) + 288] + 10000
                    if (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352]) / -mem[(32 * idx) + 288] + 10000 != mem[(32 * idx) + 352]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352])
                        require idx + 1 < 2
                        mem[(32 * idx + 1) + 352] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if (10000 * mem[(32 * idx) + 352] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352])
                        require idx + 1 < 2
                        mem[(32 * idx + 1) + 352] = (10000 * mem[(32 * idx) + 352] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + 352]) - (mem[(32 * idx) + 288] * mem[(32 * idx) + 352])
        idx = idx + 1
        continue 
    if mem[384] < 0:
        revert with 0, 
                    32,
                    45,
                    0x594d79556e69737761705632526f757465723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                    mem[529 len 19]
    mem[452] = uint64(arg3) << 96
    mem[484] = ext_call.return_data[0] - 1
    mem[416] = 68
    mem[448 len 4] = unknown_0xa9059cbb(?????)
    mem[516 len 64] = 0, arg3 << 192, Mask(224, 32, ext_call.return_data[0] - 1) >> 32
    mem[608 len 4] = Mask(32, 64, ext_call.return_data[0] - 1) >> 64
    call arg1 with:
         gas gas_remaining wei
        args ext_call.return_data[0] - 1, Mask(224, 32, arg3 << 192, Mask(224, 32, ext_call.return_data[0] - 1) >> 32) >> 32, mem[580 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 
                    32,
                    45,
                    0x545472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                    mem[629 len 19]
    mem[64] = ceil32(return_data.size) + 517
    mem[516] = return_data.size
    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    32,
                    45,
                    0x545472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                    mem[ceil32(return_data.size) + 630 len 19]
    if not return_data.size:
        idx = 0
        while idx < 1:
            require idx < mem[96]
            require idx + 1 < mem[96]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 32, 37, 0x48556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require idx + 1 < mem[320]
                _3566 = mem[(32 * idx + 1) + 352]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    if idx >= mem[96] - 2:
                        require idx < mem[192]
                        _3747 = mem[(32 * idx) + 224]
                        _3811 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3811 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3811 + 36] = 0
                        mem[_3811 + 68] = _3566
                        mem[_3811 + 100] = this.address
                        mem[_3811 + 132] = 128
                        mem[_3811 + 164] = mem[_3811]
                        s = 0
                        while s < mem[_3811]:
                            mem[_3811 + s + 196] = mem[_3811 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_3811] % 32:
                            require ext_code.size(address(_3747))
                            call address(_3747).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3566, address(this.address), 128, mem[_3811 + 164 len mem[_3811] + 32]
                        else:
                            mem[floor32(mem[_3811]) + _3811 + 196] = mem[floor32(mem[_3811]) + _3811 + -(mem[_3811] % 32) + 228 len mem[_3811] % 32]
                            require ext_code.size(address(_3747))
                            call address(_3747).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3566, address(this.address), 128, mem[_3811], mem[_3811 + 196 len floor32(mem[_3811]) + 32]
                    else:
                        require idx + 1 < mem[192]
                        _3682 = mem[(32 * idx + 1) + 224]
                        require idx < mem[192]
                        _3810 = mem[(32 * idx) + 224]
                        _3922 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3922 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3922 + 36] = 0
                        mem[_3922 + 68] = _3566
                        mem[_3922 + 100] = address(_3682)
                        mem[_3922 + 132] = 128
                        mem[_3922 + 164] = mem[_3922]
                        s = 0
                        while s < mem[_3922]:
                            mem[_3922 + s + 196] = mem[_3922 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_3922] % 32:
                            require ext_code.size(address(_3810))
                            call address(_3810).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3566, address(_3682), 128, mem[_3922 + 164 len mem[_3922] + 32]
                        else:
                            mem[floor32(mem[_3922]) + _3922 + 196] = mem[floor32(mem[_3922]) + _3922 + -(mem[_3922] % 32) + 228 len mem[_3922] % 32]
                            require ext_code.size(address(_3810))
                            call address(_3810).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3566, address(_3682), 128, mem[_3922], mem[_3922 + 196 len floor32(mem[_3922]) + 32]
                else:
                    if idx >= mem[96] - 2:
                        require idx < mem[192]
                        _3749 = mem[(32 * idx) + 224]
                        _3813 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3813 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3813 + 36] = _3566
                        mem[_3813 + 68] = 0
                        mem[_3813 + 100] = this.address
                        mem[_3813 + 132] = 128
                        mem[_3813 + 164] = mem[_3813]
                        s = 0
                        while s < mem[_3813]:
                            mem[_3813 + s + 196] = mem[_3813 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_3813] % 32:
                            require ext_code.size(address(_3749))
                            call address(_3749).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3566, 0, address(this.address), 128, mem[_3813 + 164 len mem[_3813] + 32]
                        else:
                            mem[floor32(mem[_3813]) + _3813 + 196] = mem[floor32(mem[_3813]) + _3813 + -(mem[_3813] % 32) + 228 len mem[_3813] % 32]
                            require ext_code.size(address(_3749))
                            call address(_3749).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3566, 0, address(this.address), 128, mem[_3813], mem[_3813 + 196 len floor32(mem[_3813]) + 32]
                    else:
                        require idx + 1 < mem[192]
                        _3684 = mem[(32 * idx + 1) + 224]
                        require idx < mem[192]
                        _3812 = mem[(32 * idx) + 224]
                        _3926 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3926 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3926 + 36] = _3566
                        mem[_3926 + 68] = 0
                        mem[_3926 + 100] = address(_3684)
                        mem[_3926 + 132] = 128
                        mem[_3926 + 164] = mem[_3926]
                        s = 0
                        while s < mem[_3926]:
                            mem[_3926 + s + 196] = mem[_3926 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_3926] % 32:
                            require ext_code.size(address(_3812))
                            call address(_3812).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3566, 0, address(_3684), 128, mem[_3926 + 164 len mem[_3926] + 32]
                        else:
                            mem[floor32(mem[_3926]) + _3926 + 196] = mem[floor32(mem[_3926]) + _3926 + -(mem[_3926] % 32) + 228 len mem[_3926] % 32]
                            require ext_code.size(address(_3812))
                            call address(_3812).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3566, 0, address(_3684), 128, mem[_3926], mem[_3926 + 196 len floor32(mem[_3926]) + 32]
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require idx + 1 < mem[320]
                _3567 = mem[(32 * idx + 1) + 352]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    if idx >= mem[96] - 2:
                        require idx < mem[192]
                        _3751 = mem[(32 * idx) + 224]
                        _3815 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3815 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3815 + 36] = 0
                        mem[_3815 + 68] = _3567
                        mem[_3815 + 100] = this.address
                        mem[_3815 + 132] = 128
                        mem[_3815 + 164] = mem[_3815]
                        s = 0
                        while s < mem[_3815]:
                            mem[_3815 + s + 196] = mem[_3815 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_3815] % 32:
                            require ext_code.size(address(_3751))
                            call address(_3751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3567, address(this.address), 128, mem[_3815 + 164 len mem[_3815] + 32]
                        else:
                            mem[floor32(mem[_3815]) + _3815 + 196] = mem[floor32(mem[_3815]) + _3815 + -(mem[_3815] % 32) + 228 len mem[_3815] % 32]
                            require ext_code.size(address(_3751))
                            call address(_3751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3567, address(this.address), 128, mem[_3815], mem[_3815 + 196 len floor32(mem[_3815]) + 32]
                    else:
                        require idx + 1 < mem[192]
                        _3686 = mem[(32 * idx + 1) + 224]
                        require idx < mem[192]
                        _3814 = mem[(32 * idx) + 224]
                        _3930 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3930 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3930 + 36] = 0
                        mem[_3930 + 68] = _3567
                        mem[_3930 + 100] = address(_3686)
                        mem[_3930 + 132] = 128
                        mem[_3930 + 164] = mem[_3930]
                        s = 0
                        while s < mem[_3930]:
                            mem[_3930 + s + 196] = mem[_3930 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_3930] % 32:
                            require ext_code.size(address(_3814))
                            call address(_3814).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3567, address(_3686), 128, mem[_3930 + 164 len mem[_3930] + 32]
                        else:
                            mem[floor32(mem[_3930]) + _3930 + 196] = mem[floor32(mem[_3930]) + _3930 + -(mem[_3930] % 32) + 228 len mem[_3930] % 32]
                            require ext_code.size(address(_3814))
                            call address(_3814).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3567, address(_3686), 128, mem[_3930], mem[_3930 + 196 len floor32(mem[_3930]) + 32]
                else:
                    if idx >= mem[96] - 2:
                        require idx < mem[192]
                        _3753 = mem[(32 * idx) + 224]
                        _3817 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3817 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3817 + 36] = _3567
                        mem[_3817 + 68] = 0
                        mem[_3817 + 100] = this.address
                        mem[_3817 + 132] = 128
                        mem[_3817 + 164] = mem[_3817]
                        s = 0
                        while s < mem[_3817]:
                            mem[_3817 + s + 196] = mem[_3817 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_3817] % 32:
                            require ext_code.size(address(_3753))
                            call address(_3753).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3567, 0, address(this.address), 128, mem[_3817 + 164 len mem[_3817] + 32]
                        else:
                            mem[floor32(mem[_3817]) + _3817 + 196] = mem[floor32(mem[_3817]) + _3817 + -(mem[_3817] % 32) + 228 len mem[_3817] % 32]
                            require ext_code.size(address(_3753))
                            call address(_3753).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3567, 0, address(this.address), 128, mem[_3817], mem[_3817 + 196 len floor32(mem[_3817]) + 32]
                    else:
                        require idx + 1 < mem[192]
                        _3688 = mem[(32 * idx + 1) + 224]
                        require idx < mem[192]
                        _3816 = mem[(32 * idx) + 224]
                        _3934 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3934 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3934 + 36] = _3567
                        mem[_3934 + 68] = 0
                        mem[_3934 + 100] = address(_3688)
                        mem[_3934 + 132] = 128
                        mem[_3934 + 164] = mem[_3934]
                        s = 0
                        while s < mem[_3934]:
                            mem[_3934 + s + 196] = mem[_3934 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_3934] % 32:
                            require ext_code.size(address(_3816))
                            call address(_3816).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3567, 0, address(_3688), 128, mem[_3934 + 164 len mem[_3934] + 32]
                        else:
                            mem[floor32(mem[_3934]) + _3934 + 196] = mem[floor32(mem[_3934]) + _3934 + -(mem[_3934] % 32) + 228 len mem[_3934] % 32]
                            require ext_code.size(address(_3816))
                            call address(_3816).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3567, 0, address(_3688), 128, mem[_3934], mem[_3934 + 196 len floor32(mem[_3934]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        require return_data.size >= 32
        if not mem[548]:
            revert with 0, 
                        32,
                        45,
                        0x545472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                        mem[ceil32(return_data.size) + 630 len 19]
        idx = 0
        while idx < 1:
            require idx < mem[96]
            require idx + 1 < mem[96]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 32, 37, 0x48556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require idx + 1 < mem[320]
                _3568 = mem[(32 * idx + 1) + 352]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    if idx >= mem[96] - 2:
                        require idx < mem[192]
                        _3755 = mem[(32 * idx) + 224]
                        _3819 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3819 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3819 + 36] = 0
                        mem[_3819 + 68] = _3568
                        mem[_3819 + 100] = this.address
                        mem[_3819 + 132] = 128
                        mem[_3819 + 164] = mem[_3819]
                        s = 0
                        while s < mem[_3819]:
                            mem[_3819 + s + 196] = mem[_3819 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_3819] % 32:
                            require ext_code.size(address(_3755))
                            call address(_3755).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3568, address(this.address), 128, mem[_3819 + 164 len mem[_3819] + 32]
                        else:
                            mem[floor32(mem[_3819]) + _3819 + 196] = mem[floor32(mem[_3819]) + _3819 + -(mem[_3819] % 32) + 228 len mem[_3819] % 32]
                            require ext_code.size(address(_3755))
                            call address(_3755).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3568, address(this.address), 128, mem[_3819], mem[_3819 + 196 len floor32(mem[_3819]) + 32]
                    else:
                        require idx + 1 < mem[192]
                        _3690 = mem[(32 * idx + 1) + 224]
                        require idx < mem[192]
                        _3818 = mem[(32 * idx) + 224]
                        _3938 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3938 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3938 + 36] = 0
                        mem[_3938 + 68] = _3568
                        mem[_3938 + 100] = address(_3690)
                        mem[_3938 + 132] = 128
                        mem[_3938 + 164] = mem[_3938]
                        s = 0
                        while s < mem[_3938]:
                            mem[_3938 + s + 196] = mem[_3938 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_3938] % 32:
                            require ext_code.size(address(_3818))
                            call address(_3818).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3568, address(_3690), 128, mem[_3938 + 164 len mem[_3938] + 32]
                        else:
                            mem[floor32(mem[_3938]) + _3938 + 196] = mem[floor32(mem[_3938]) + _3938 + -(mem[_3938] % 32) + 228 len mem[_3938] % 32]
                            require ext_code.size(address(_3818))
                            call address(_3818).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3568, address(_3690), 128, mem[_3938], mem[_3938 + 196 len floor32(mem[_3938]) + 32]
                else:
                    if idx >= mem[96] - 2:
                        require idx < mem[192]
                        _3757 = mem[(32 * idx) + 224]
                        _3821 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3821 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3821 + 36] = _3568
                        mem[_3821 + 68] = 0
                        mem[_3821 + 100] = this.address
                        mem[_3821 + 132] = 128
                        mem[_3821 + 164] = mem[_3821]
                        s = 0
                        while s < mem[_3821]:
                            mem[_3821 + s + 196] = mem[_3821 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_3821] % 32:
                            require ext_code.size(address(_3757))
                            call address(_3757).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3568, 0, address(this.address), 128, mem[_3821 + 164 len mem[_3821] + 32]
                        else:
                            mem[floor32(mem[_3821]) + _3821 + 196] = mem[floor32(mem[_3821]) + _3821 + -(mem[_3821] % 32) + 228 len mem[_3821] % 32]
                            require ext_code.size(address(_3757))
                            call address(_3757).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3568, 0, address(this.address), 128, mem[_3821], mem[_3821 + 196 len floor32(mem[_3821]) + 32]
                    else:
                        require idx + 1 < mem[192]
                        _3692 = mem[(32 * idx + 1) + 224]
                        require idx < mem[192]
                        _3820 = mem[(32 * idx) + 224]
                        _3942 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3942 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3942 + 36] = _3568
                        mem[_3942 + 68] = 0
                        mem[_3942 + 100] = address(_3692)
                        mem[_3942 + 132] = 128
                        mem[_3942 + 164] = mem[_3942]
                        s = 0
                        while s < mem[_3942]:
                            mem[_3942 + s + 196] = mem[_3942 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_3942] % 32:
                            require ext_code.size(address(_3820))
                            call address(_3820).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3568, 0, address(_3692), 128, mem[_3942 + 164 len mem[_3942] + 32]
                        else:
                            mem[floor32(mem[_3942]) + _3942 + 196] = mem[floor32(mem[_3942]) + _3942 + -(mem[_3942] % 32) + 228 len mem[_3942] % 32]
                            require ext_code.size(address(_3820))
                            call address(_3820).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3568, 0, address(_3692), 128, mem[_3942], mem[_3942 + 196 len floor32(mem[_3942]) + 32]
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require idx + 1 < mem[320]
                _3569 = mem[(32 * idx + 1) + 352]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    if idx >= mem[96] - 2:
                        require idx < mem[192]
                        _3759 = mem[(32 * idx) + 224]
                        _3823 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3823 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3823 + 36] = 0
                        mem[_3823 + 68] = _3569
                        mem[_3823 + 100] = this.address
                        mem[_3823 + 132] = 128
                        mem[_3823 + 164] = mem[_3823]
                        s = 0
                        while s < mem[_3823]:
                            mem[_3823 + s + 196] = mem[_3823 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_3823] % 32:
                            require ext_code.size(address(_3759))
                            call address(_3759).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3569, address(this.address), 128, mem[_3823 + 164 len mem[_3823] + 32]
                        else:
                            mem[floor32(mem[_3823]) + _3823 + 196] = mem[floor32(mem[_3823]) + _3823 + -(mem[_3823] % 32) + 228 len mem[_3823] % 32]
                            require ext_code.size(address(_3759))
                            call address(_3759).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3569, address(this.address), 128, mem[_3823], mem[_3823 + 196 len floor32(mem[_3823]) + 32]
                    else:
                        require idx + 1 < mem[192]
                        _3694 = mem[(32 * idx + 1) + 224]
                        require idx < mem[192]
                        _3822 = mem[(32 * idx) + 224]
                        _3946 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3946 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3946 + 36] = 0
                        mem[_3946 + 68] = _3569
                        mem[_3946 + 100] = address(_3694)
                        mem[_3946 + 132] = 128
                        mem[_3946 + 164] = mem[_3946]
                        s = 0
                        while s < mem[_3946]:
                            mem[_3946 + s + 196] = mem[_3946 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_3946] % 32:
                            require ext_code.size(address(_3822))
                            call address(_3822).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3569, address(_3694), 128, mem[_3946 + 164 len mem[_3946] + 32]
                        else:
                            mem[floor32(mem[_3946]) + _3946 + 196] = mem[floor32(mem[_3946]) + _3946 + -(mem[_3946] % 32) + 228 len mem[_3946] % 32]
                            require ext_code.size(address(_3822))
                            call address(_3822).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3569, address(_3694), 128, mem[_3946], mem[_3946 + 196 len floor32(mem[_3946]) + 32]
                else:
                    if idx >= mem[96] - 2:
                        require idx < mem[192]
                        _3761 = mem[(32 * idx) + 224]
                        _3825 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3825 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3825 + 36] = _3569
                        mem[_3825 + 68] = 0
                        mem[_3825 + 100] = this.address
                        mem[_3825 + 132] = 128
                        mem[_3825 + 164] = mem[_3825]
                        s = 0
                        while s < mem[_3825]:
                            mem[_3825 + s + 196] = mem[_3825 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_3825] % 32:
                            require ext_code.size(address(_3761))
                            call address(_3761).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3569, 0, address(this.address), 128, mem[_3825 + 164 len mem[_3825] + 32]
                        else:
                            mem[floor32(mem[_3825]) + _3825 + 196] = mem[floor32(mem[_3825]) + _3825 + -(mem[_3825] % 32) + 228 len mem[_3825] % 32]
                            require ext_code.size(address(_3761))
                            call address(_3761).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3569, 0, address(this.address), 128, mem[_3825], mem[_3825 + 196 len floor32(mem[_3825]) + 32]
                    else:
                        require idx + 1 < mem[192]
                        _3696 = mem[(32 * idx + 1) + 224]
                        require idx < mem[192]
                        _3824 = mem[(32 * idx) + 224]
                        _3950 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3950 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3950 + 36] = _3569
                        mem[_3950 + 68] = 0
                        mem[_3950 + 100] = address(_3696)
                        mem[_3950 + 132] = 128
                        mem[_3950 + 164] = mem[_3950]
                        s = 0
                        while s < mem[_3950]:
                            mem[_3950 + s + 196] = mem[_3950 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_3950] % 32:
                            require ext_code.size(address(_3824))
                            call address(_3824).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3569, 0, address(_3696), 128, mem[_3950 + 164 len mem[_3950] + 32]
                        else:
                            mem[floor32(mem[_3950]) + _3950 + 196] = mem[floor32(mem[_3950]) + _3950 + -(mem[_3950] % 32) + 228 len mem[_3950] % 32]
                            require ext_code.size(address(_3824))
                            call address(_3824).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3569, 0, address(_3696), 128, mem[_3950], mem[_3950 + 196 len floor32(mem[_3950]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}



}
