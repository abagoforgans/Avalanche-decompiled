contract main {




// =====================  Runtime code  =====================


const getKey = sha3(Mask(168, 88, 'UNISWAP_DIRECT_ROUTER') >> 88, Mask(40, 216, '2.0.0') >> 216)

const ROUTER_ROLE = 0x7a05a596cb0ce7fdea8a1e1ec73be300bdb35097c944ce1897202f7a13122eb2

const WHITELISTED_ROLE = 0x8429d542926e6695b59ac6fbdcd9b37e8b1aeb757afab06ab60b1bb5878c3b49


address stor0;

function _fallback() payable {
    revert
}

function initialize(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    revert with 0, 'METHOD NOT IMPLEMENTED'
}

function sub_b2f1e6db(?) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[96] = arg5.length
    mem[128 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if not arg5.length:
        revert with 0, 'At least one pool required'
    require arg5.length + 1 <= test266151307()
    mem[(32 * arg5.length) + 128] = arg5.length + 1
    mem[64] = (32 * arg5.length) + (32 * arg5.length + 1) + 160
    if not arg5.length + 1:
        require arg5.length < arg5.length + 1
        mem[(64 * arg5.length) + 160] = arg3
        idx = arg5.length
        while idx:
            require idx - 1 < mem[96]
            _447 = mem[(32 * idx - 1) + 128]
            require idx < mem[(32 * arg5.length) + 128]
            _454 = mem[(32 * idx) + (32 * arg5.length) + 160]
            if mem[(32 * idx) + (32 * arg5.length) + 160] <= 0:
                revert with 0, 
                            32,
                            40,
                            0x54556e697377617056324c69623a20494e53554646494349454e545f4f55545055545f414d4f554e,
                            mem[mem[64] + 108 len 24]
            require ext_code.size(mem[(32 * idx - 1) + 140 len 20])
            staticcall mem[(32 * idx - 1) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if 0 == Mask(1, 160, _447):
                if Mask(112, 0, ext_call.return_data[32]) <= _454:
                    revert with 0, 
                                32,
                                57,
                                0x54556e697377617056324c69623a20726573657276654f75742073686f756c642062652067726561746572207468616e20616d6f756e744f75,
                                mem[mem[64] + 125 len 7]
                if not Mask(112, 0, ext_call.return_data[0]):
                    _634 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_634] = 30
                    mem[_634 + 32] = 'SafeMath: subtraction overflow'
                    if _454 <= Mask(112, 0, ext_call.return_data[32]):
                        require Mask(112, 0, ext_call.return_data[32]) - _454
                        if (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161) / Mask(112, 0, ext_call.return_data[32]) - _454 != Mask(95, 0, _447) >> 161:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161)
                        if (0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161)) + 1 < 0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg5.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161)) + 1
                        idx = idx - 1
                        continue 
                    _653 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _653 + 68] = mem[idx + _634 + 32]
                        idx = idx + 32
                        continue 
                    mem[_653 + 68] = mem[_653 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _653 + -mem[64] + 100
                if _454 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != _454:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _454 * Mask(112, 0, ext_call.return_data[0]):
                    _652 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_652] = 30
                    mem[_652 + 32] = 'SafeMath: subtraction overflow'
                    if _454 <= Mask(112, 0, ext_call.return_data[32]):
                        require Mask(112, 0, ext_call.return_data[32]) - _454
                        if (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161) / Mask(112, 0, ext_call.return_data[32]) - _454 != Mask(95, 0, _447) >> 161:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161)
                        if (0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161)) + 1 < 0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg5.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161)) + 1
                        idx = idx - 1
                        continue 
                    _669 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _669 + 68] = mem[idx + _652 + 32]
                        idx = idx + 32
                        continue 
                    mem[_669 + 68] = mem[_669 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _669 + -mem[64] + 100
                if 10000 * _454 * Mask(112, 0, ext_call.return_data[0]) / _454 * Mask(112, 0, ext_call.return_data[0]) != 10000:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _668 = mem[64]
                mem[64] = mem[64] + 64
                mem[_668] = 30
                mem[_668 + 32] = 'SafeMath: subtraction overflow'
                if _454 <= Mask(112, 0, ext_call.return_data[32]):
                    require Mask(112, 0, ext_call.return_data[32]) - _454
                    if (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161) / Mask(112, 0, ext_call.return_data[32]) - _454 != Mask(95, 0, _447) >> 161:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161)
                    if (10000 * _454 * Mask(112, 0, ext_call.return_data[0]) / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161)) + 1 < 10000 * _454 * Mask(112, 0, ext_call.return_data[0]) / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[(32 * arg5.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (10000 * _454 * Mask(112, 0, ext_call.return_data[0]) / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161)) + 1
                    idx = idx - 1
                    continue 
                _702 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _702 + 68] = mem[idx + _668 + 32]
                    idx = idx + 32
                    continue 
                mem[_702 + 68] = mem[_702 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _702 + -mem[64] + 100
            if Mask(112, 0, ext_call.return_data[0]) <= _454:
                revert with 0, 
                            32,
                            57,
                            0x54556e697377617056324c69623a20726573657276654f75742073686f756c642062652067726561746572207468616e20616d6f756e744f75,
                            mem[mem[64] + 125 len 7]
            if not Mask(112, 0, ext_call.return_data[32]):
                _635 = mem[64]
                mem[64] = mem[64] + 64
                mem[_635] = 30
                mem[_635 + 32] = 'SafeMath: subtraction overflow'
                if _454 <= Mask(112, 0, ext_call.return_data[0]):
                    require Mask(112, 0, ext_call.return_data[0]) - _454
                    if (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161) / Mask(112, 0, ext_call.return_data[0]) - _454 != Mask(95, 0, _447) >> 161:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161)
                    if (0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161)) + 1 < 0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[(32 * arg5.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161)) + 1
                    idx = idx - 1
                    continue 
                _657 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _657 + 68] = mem[idx + _635 + 32]
                    idx = idx + 32
                    continue 
                mem[_657 + 68] = mem[_657 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _657 + -mem[64] + 100
            if _454 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != _454:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not _454 * Mask(112, 0, ext_call.return_data[32]):
                _656 = mem[64]
                mem[64] = mem[64] + 64
                mem[_656] = 30
                mem[_656 + 32] = 'SafeMath: subtraction overflow'
                if _454 <= Mask(112, 0, ext_call.return_data[0]):
                    require Mask(112, 0, ext_call.return_data[0]) - _454
                    if (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161) / Mask(112, 0, ext_call.return_data[0]) - _454 != Mask(95, 0, _447) >> 161:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161)
                    if (0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161)) + 1 < 0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[(32 * arg5.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161)) + 1
                    idx = idx - 1
                    continue 
                _674 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _674 + 68] = mem[idx + _656 + 32]
                    idx = idx + 32
                    continue 
                mem[_674 + 68] = mem[_674 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _674 + -mem[64] + 100
            if 10000 * _454 * Mask(112, 0, ext_call.return_data[32]) / _454 * Mask(112, 0, ext_call.return_data[32]) != 10000:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _673 = mem[64]
            mem[64] = mem[64] + 64
            mem[_673] = 30
            mem[_673 + 32] = 'SafeMath: subtraction overflow'
            if _454 <= Mask(112, 0, ext_call.return_data[0]):
                require Mask(112, 0, ext_call.return_data[0]) - _454
                if (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161) / Mask(112, 0, ext_call.return_data[0]) - _454 != Mask(95, 0, _447) >> 161:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161)
                if (10000 * _454 * Mask(112, 0, ext_call.return_data[32]) / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161)) + 1 < 10000 * _454 * Mask(112, 0, ext_call.return_data[32]) / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161):
                    revert with 0, 'SafeMath: addition overflow'
                require idx - 1 < mem[(32 * arg5.length) + 128]
                mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (10000 * _454 * Mask(112, 0, ext_call.return_data[32]) / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _447) >> 161) - (_454 * Mask(95, 0, _447) >> 161)) + 1
                idx = idx - 1
                continue 
            _707 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _707 + 68] = mem[idx + _673 + 32]
                idx = idx + 32
                continue 
            mem[_707 + 68] = mem[_707 + 70 len 30]
            revert with memory
              from mem[64]
               len _707 + -mem[64] + 100
        require 0 < mem[(32 * arg5.length) + 128]
        _446 = mem[(32 * arg5.length) + 160]
        if mem[(32 * arg5.length) + 160] > arg2:
            revert with 0, 
                        32,
                        42,
                        0x74556e69737761705632526f757465723a20494e53554646494349454e545f494e5055545f414d4f554e,
                        mem[mem[64] + 110 len 22]
        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require 0 < mem[96]
            _460 = mem[128]
            mem[mem[64]] = 0x15dacbea00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_460)
            mem[mem[64] + 100] = _446
            require ext_code.size(stor0)
            call stor0.transferFrom(address rg1, address rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args address(arg1), msg.sender, address(_460), _446
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < arg5.length:
                require idx < mem[96]
                _902 = mem[(32 * idx) + 128]
                require idx + 1 < mem[(32 * arg5.length) + 128]
                if 0 == Mask(1, 160, mem[(32 * idx) + 128]):
                    _954 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                    if idx + 1 == arg5.length:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _954
                        if arg4:
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_902))
                            call address(_902).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _954, address(this.address), 128, 0, mem[mem[64] + 164]
                        else:
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_902))
                            call address(_902).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _954, msg.sender, 128, 0, mem[mem[64] + 164]
                    else:
                        require idx + 1 < mem[96]
                        _988 = mem[(32 * idx + 1) + 128]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _954
                        mem[mem[64] + 68] = address(_988)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_902))
                        call address(_902).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _954, address(_988), 128, 0, mem[mem[64] + 164]
                else:
                    _955 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                    if idx + 1 == arg5.length:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _955
                        mem[mem[64] + 36] = 0
                        if arg4:
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_902))
                            call address(_902).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _955, 0, address(this.address), 128, 0, mem[mem[64] + 164]
                        else:
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_902))
                            call address(_902).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _955, 0, msg.sender, 128, 0, mem[mem[64] + 164]
                    else:
                        require idx + 1 < mem[96]
                        _989 = mem[(32 * idx + 1) + 128]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _955
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_989)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_902))
                        call address(_902).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _955, 0, address(_989), 128, 0, mem[mem[64] + 164]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            if arg4:
                mem[mem[64] + 4] = arg3
                require ext_code.size(arg4)
                call arg4.withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _966 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                _968 = mem[_966]
                mem[mem[64] len floor32(mem[_966])] = mem[_966 + 32 len floor32(mem[_966])]
                mem[mem[64] + floor32(mem[_966]) + -(mem[_966] % 32) + 32 len mem[_966] % 32] = mem[_966 + floor32(mem[_966]) + -(mem[_966] % 32) + 64 len mem[_966] % 32]
                call msg.sender with:
                   value arg3 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _968 + _966 + -mem[64] + 28]
                if return_data.size:
                    _1138 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1138] = return_data.size
                    mem[_1138 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
        else:
            _461 = mem[64]
            mem[64] = mem[64] + 64
            mem[_461] = 30
            mem[_461 + 32] = 'SafeMath: subtraction overflow'
            if _446 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            _494 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            _496 = mem[_494]
            mem[mem[64] len floor32(mem[_494])] = mem[_494 + 32 len floor32(mem[_494])]
            mem[mem[64] + floor32(mem[_494]) + -(mem[_494] % 32) + 32 len mem[_494] % 32] = mem[_494 + floor32(mem[_494]) + -(mem[_494] % 32) + 64 len mem[_494] % 32]
            call msg.sender with:
               value msg.value - _446 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _496 + _494 + -mem[64] + 28]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg4)
                call arg4.deposit() with:
                   value _446 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 < mem[96]
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = _446
                require ext_code.size(arg4)
                call arg4.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _446
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                idx = 0
                while idx < arg5.length:
                    require idx < mem[96]
                    _1139 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[(32 * arg5.length) + 128]
                    if 0 == Mask(1, 160, mem[(32 * idx) + 128]):
                        _1156 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                        if idx + 1 == arg5.length:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _1156
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_1139))
                            call address(_1139).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _1156, msg.sender, 128, 0, mem[mem[64] + 164]
                        else:
                            require idx + 1 < mem[96]
                            _1176 = mem[(32 * idx + 1) + 128]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _1156
                            mem[mem[64] + 68] = address(_1176)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_1139))
                            call address(_1139).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _1156, address(_1176), 128, 0, mem[mem[64] + 164]
                    else:
                        _1157 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                        if idx + 1 == arg5.length:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1157
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_1139))
                            call address(_1139).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _1157, 0, msg.sender, 128, 0, mem[mem[64] + 164]
                        else:
                            require idx + 1 < mem[96]
                            _1177 = mem[(32 * idx + 1) + 128]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1157
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_1177)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_1139))
                            call address(_1139).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _1157, 0, address(_1177), 128, 0, mem[mem[64] + 164]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                _903 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_903] = return_data.size
                mem[_903 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg4)
                call arg4.deposit() with:
                   value _446 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 < mem[96]
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = _446
                require ext_code.size(arg4)
                call arg4.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _446
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                idx = 0
                while idx < arg5.length:
                    require idx < mem[96]
                    _1140 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[(32 * arg5.length) + 128]
                    if 0 == Mask(1, 160, mem[(32 * idx) + 128]):
                        _1158 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                        if idx + 1 == arg5.length:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _1158
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_1140))
                            call address(_1140).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _1158, msg.sender, 128, 0, mem[mem[64] + 164]
                        else:
                            require idx + 1 < mem[96]
                            _1178 = mem[(32 * idx + 1) + 128]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _1158
                            mem[mem[64] + 68] = address(_1178)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_1140))
                            call address(_1140).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _1158, address(_1178), 128, 0, mem[mem[64] + 164]
                    else:
                        _1159 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                        if idx + 1 == arg5.length:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1159
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_1140))
                            call address(_1140).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _1159, 0, msg.sender, 128, 0, mem[mem[64] + 164]
                        else:
                            require idx + 1 < mem[96]
                            _1179 = mem[(32 * idx + 1) + 128]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1159
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_1179)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_1140))
                            call address(_1140).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _1159, 0, address(_1179), 128, 0, mem[mem[64] + 164]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    else:
        mem[(32 * arg5.length) + 160 len 32 * arg5.length + 1] = call.data[calldata.size len 32 * arg5.length + 1]
        require arg5.length < arg5.length + 1
        mem[(64 * arg5.length) + 160] = arg3
        idx = arg5.length
        while idx:
            require idx - 1 < mem[96]
            _450 = mem[(32 * idx - 1) + 128]
            require idx < mem[(32 * arg5.length) + 128]
            _457 = mem[(32 * idx) + (32 * arg5.length) + 160]
            if mem[(32 * idx) + (32 * arg5.length) + 160] <= 0:
                revert with 0, 
                            32,
                            40,
                            0x54556e697377617056324c69623a20494e53554646494349454e545f4f55545055545f414d4f554e,
                            mem[mem[64] + 108 len 24]
            require ext_code.size(mem[(32 * idx - 1) + 140 len 20])
            staticcall mem[(32 * idx - 1) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if 0 == Mask(1, 160, _450):
                if Mask(112, 0, ext_call.return_data[32]) <= _457:
                    revert with 0, 
                                32,
                                57,
                                0x54556e697377617056324c69623a20726573657276654f75742073686f756c642062652067726561746572207468616e20616d6f756e744f75,
                                mem[mem[64] + 125 len 7]
                if not Mask(112, 0, ext_call.return_data[0]):
                    _638 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_638] = 30
                    mem[_638 + 32] = 'SafeMath: subtraction overflow'
                    if _457 <= Mask(112, 0, ext_call.return_data[32]):
                        require Mask(112, 0, ext_call.return_data[32]) - _457
                        if (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161) / Mask(112, 0, ext_call.return_data[32]) - _457 != Mask(95, 0, _450) >> 161:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161)
                        if (0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161)) + 1 < 0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg5.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161)) + 1
                        idx = idx - 1
                        continue 
                    _661 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _661 + 68] = mem[idx + _638 + 32]
                        idx = idx + 32
                        continue 
                    mem[_661 + 68] = mem[_661 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _661 + -mem[64] + 100
                if _457 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != _457:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _457 * Mask(112, 0, ext_call.return_data[0]):
                    _660 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_660] = 30
                    mem[_660 + 32] = 'SafeMath: subtraction overflow'
                    if _457 <= Mask(112, 0, ext_call.return_data[32]):
                        require Mask(112, 0, ext_call.return_data[32]) - _457
                        if (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161) / Mask(112, 0, ext_call.return_data[32]) - _457 != Mask(95, 0, _450) >> 161:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161)
                        if (0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161)) + 1 < 0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg5.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161)) + 1
                        idx = idx - 1
                        continue 
                    _679 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _679 + 68] = mem[idx + _660 + 32]
                        idx = idx + 32
                        continue 
                    mem[_679 + 68] = mem[_679 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _679 + -mem[64] + 100
                if 10000 * _457 * Mask(112, 0, ext_call.return_data[0]) / _457 * Mask(112, 0, ext_call.return_data[0]) != 10000:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _678 = mem[64]
                mem[64] = mem[64] + 64
                mem[_678] = 30
                mem[_678 + 32] = 'SafeMath: subtraction overflow'
                if _457 <= Mask(112, 0, ext_call.return_data[32]):
                    require Mask(112, 0, ext_call.return_data[32]) - _457
                    if (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161) / Mask(112, 0, ext_call.return_data[32]) - _457 != Mask(95, 0, _450) >> 161:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161)
                    if (10000 * _457 * Mask(112, 0, ext_call.return_data[0]) / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161)) + 1 < 10000 * _457 * Mask(112, 0, ext_call.return_data[0]) / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[(32 * arg5.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (10000 * _457 * Mask(112, 0, ext_call.return_data[0]) / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161)) + 1
                    idx = idx - 1
                    continue 
                _714 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _714 + 68] = mem[idx + _678 + 32]
                    idx = idx + 32
                    continue 
                mem[_714 + 68] = mem[_714 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _714 + -mem[64] + 100
            if Mask(112, 0, ext_call.return_data[0]) <= _457:
                revert with 0, 
                            32,
                            57,
                            0x54556e697377617056324c69623a20726573657276654f75742073686f756c642062652067726561746572207468616e20616d6f756e744f75,
                            mem[mem[64] + 125 len 7]
            if not Mask(112, 0, ext_call.return_data[32]):
                _639 = mem[64]
                mem[64] = mem[64] + 64
                mem[_639] = 30
                mem[_639 + 32] = 'SafeMath: subtraction overflow'
                if _457 <= Mask(112, 0, ext_call.return_data[0]):
                    require Mask(112, 0, ext_call.return_data[0]) - _457
                    if (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161) / Mask(112, 0, ext_call.return_data[0]) - _457 != Mask(95, 0, _450) >> 161:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161)
                    if (0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161)) + 1 < 0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[(32 * arg5.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161)) + 1
                    idx = idx - 1
                    continue 
                _665 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _665 + 68] = mem[idx + _639 + 32]
                    idx = idx + 32
                    continue 
                mem[_665 + 68] = mem[_665 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _665 + -mem[64] + 100
            if _457 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != _457:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not _457 * Mask(112, 0, ext_call.return_data[32]):
                _664 = mem[64]
                mem[64] = mem[64] + 64
                mem[_664] = 30
                mem[_664 + 32] = 'SafeMath: subtraction overflow'
                if _457 <= Mask(112, 0, ext_call.return_data[0]):
                    require Mask(112, 0, ext_call.return_data[0]) - _457
                    if (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161) / Mask(112, 0, ext_call.return_data[0]) - _457 != Mask(95, 0, _450) >> 161:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161)
                    if (0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161)) + 1 < 0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[(32 * arg5.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161)) + 1
                    idx = idx - 1
                    continue 
                _684 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _684 + 68] = mem[idx + _664 + 32]
                    idx = idx + 32
                    continue 
                mem[_684 + 68] = mem[_684 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _684 + -mem[64] + 100
            if 10000 * _457 * Mask(112, 0, ext_call.return_data[32]) / _457 * Mask(112, 0, ext_call.return_data[32]) != 10000:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _683 = mem[64]
            mem[64] = mem[64] + 64
            mem[_683] = 30
            mem[_683 + 32] = 'SafeMath: subtraction overflow'
            if _457 <= Mask(112, 0, ext_call.return_data[0]):
                require Mask(112, 0, ext_call.return_data[0]) - _457
                if (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161) / Mask(112, 0, ext_call.return_data[0]) - _457 != Mask(95, 0, _450) >> 161:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161)
                if (10000 * _457 * Mask(112, 0, ext_call.return_data[32]) / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161)) + 1 < 10000 * _457 * Mask(112, 0, ext_call.return_data[32]) / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161):
                    revert with 0, 'SafeMath: addition overflow'
                require idx - 1 < mem[(32 * arg5.length) + 128]
                mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (10000 * _457 * Mask(112, 0, ext_call.return_data[32]) / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _450) >> 161) - (_457 * Mask(95, 0, _450) >> 161)) + 1
                idx = idx - 1
                continue 
            _719 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _719 + 68] = mem[idx + _683 + 32]
                idx = idx + 32
                continue 
            mem[_719 + 68] = mem[_719 + 70 len 30]
            revert with memory
              from mem[64]
               len _719 + -mem[64] + 100
        require 0 < mem[(32 * arg5.length) + 128]
        _449 = mem[(32 * arg5.length) + 160]
        if mem[(32 * arg5.length) + 160] > arg2:
            revert with 0, 
                        32,
                        42,
                        0x74556e69737761705632526f757465723a20494e53554646494349454e545f494e5055545f414d4f554e,
                        mem[mem[64] + 110 len 22]
        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require 0 < mem[96]
            _464 = mem[128]
            mem[mem[64]] = 0x15dacbea00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_464)
            mem[mem[64] + 100] = _449
            require ext_code.size(stor0)
            call stor0.transferFrom(address rg1, address rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args address(arg1), msg.sender, address(_464), _449
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < arg5.length:
                require idx < mem[96]
                _920 = mem[(32 * idx) + 128]
                require idx + 1 < mem[(32 * arg5.length) + 128]
                if 0 == Mask(1, 160, mem[(32 * idx) + 128]):
                    _960 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                    if idx + 1 == arg5.length:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _960
                        if arg4:
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_920))
                            call address(_920).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _960, address(this.address), 128, 0, mem[mem[64] + 164]
                        else:
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_920))
                            call address(_920).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _960, msg.sender, 128, 0, mem[mem[64] + 164]
                    else:
                        require idx + 1 < mem[96]
                        _996 = mem[(32 * idx + 1) + 128]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _960
                        mem[mem[64] + 68] = address(_996)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_920))
                        call address(_920).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _960, address(_996), 128, 0, mem[mem[64] + 164]
                else:
                    _961 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                    if idx + 1 == arg5.length:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _961
                        mem[mem[64] + 36] = 0
                        if arg4:
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_920))
                            call address(_920).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _961, 0, address(this.address), 128, 0, mem[mem[64] + 164]
                        else:
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_920))
                            call address(_920).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _961, 0, msg.sender, 128, 0, mem[mem[64] + 164]
                    else:
                        require idx + 1 < mem[96]
                        _997 = mem[(32 * idx + 1) + 128]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _961
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_997)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_920))
                        call address(_920).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _961, 0, address(_997), 128, 0, mem[mem[64] + 164]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            if arg4:
                mem[mem[64] + 4] = arg3
                require ext_code.size(arg4)
                call arg4.withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _973 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                _975 = mem[_973]
                mem[mem[64] len floor32(mem[_973])] = mem[_973 + 32 len floor32(mem[_973])]
                mem[mem[64] + floor32(mem[_973]) + -(mem[_973] % 32) + 32 len mem[_973] % 32] = mem[_973 + floor32(mem[_973]) + -(mem[_973] % 32) + 64 len mem[_973] % 32]
                call msg.sender with:
                   value arg3 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _975 + _973 + -mem[64] + 28]
                if return_data.size:
                    _1141 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1141] = return_data.size
                    mem[_1141 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
        else:
            _465 = mem[64]
            mem[64] = mem[64] + 64
            mem[_465] = 30
            mem[_465 + 32] = 'SafeMath: subtraction overflow'
            if _449 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            _498 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            _500 = mem[_498]
            mem[mem[64] len floor32(mem[_498])] = mem[_498 + 32 len floor32(mem[_498])]
            mem[mem[64] + floor32(mem[_498]) + -(mem[_498] % 32) + 32 len mem[_498] % 32] = mem[_498 + floor32(mem[_498]) + -(mem[_498] % 32) + 64 len mem[_498] % 32]
            call msg.sender with:
               value msg.value - _449 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _500 + _498 + -mem[64] + 28]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg4)
                call arg4.deposit() with:
                   value _449 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 < mem[96]
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = _449
                require ext_code.size(arg4)
                call arg4.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _449
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                idx = 0
                while idx < arg5.length:
                    require idx < mem[96]
                    _1142 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[(32 * arg5.length) + 128]
                    if 0 == Mask(1, 160, mem[(32 * idx) + 128]):
                        _1164 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                        if idx + 1 == arg5.length:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _1164
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_1142))
                            call address(_1142).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _1164, msg.sender, 128, 0, mem[mem[64] + 164]
                        else:
                            require idx + 1 < mem[96]
                            _1180 = mem[(32 * idx + 1) + 128]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _1164
                            mem[mem[64] + 68] = address(_1180)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_1142))
                            call address(_1142).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _1164, address(_1180), 128, 0, mem[mem[64] + 164]
                    else:
                        _1165 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                        if idx + 1 == arg5.length:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1165
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_1142))
                            call address(_1142).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _1165, 0, msg.sender, 128, 0, mem[mem[64] + 164]
                        else:
                            require idx + 1 < mem[96]
                            _1181 = mem[(32 * idx + 1) + 128]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1165
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_1181)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_1142))
                            call address(_1142).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _1165, 0, address(_1181), 128, 0, mem[mem[64] + 164]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                _921 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_921] = return_data.size
                mem[_921 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg4)
                call arg4.deposit() with:
                   value _449 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 < mem[96]
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = _449
                require ext_code.size(arg4)
                call arg4.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _449
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                idx = 0
                while idx < arg5.length:
                    require idx < mem[96]
                    _1143 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[(32 * arg5.length) + 128]
                    if 0 == Mask(1, 160, mem[(32 * idx) + 128]):
                        _1166 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                        if idx + 1 == arg5.length:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _1166
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_1143))
                            call address(_1143).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _1166, msg.sender, 128, 0, mem[mem[64] + 164]
                        else:
                            require idx + 1 < mem[96]
                            _1182 = mem[(32 * idx + 1) + 128]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _1166
                            mem[mem[64] + 68] = address(_1182)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_1143))
                            call address(_1143).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _1166, address(_1182), 128, 0, mem[mem[64] + 164]
                    else:
                        _1167 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                        if idx + 1 == arg5.length:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1167
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_1143))
                            call address(_1143).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _1167, 0, msg.sender, 128, 0, mem[mem[64] + 164]
                        else:
                            require idx + 1 < mem[96]
                            _1183 = mem[(32 * idx + 1) + 128]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1167
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_1183)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_1143))
                            call address(_1143).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _1167, 0, address(_1183), 128, 0, mem[mem[64] + 164]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
}

function sub_0b86a4c1(?) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[128 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + 128] = 0
    if not arg5.length:
        revert with 0, 'At least one pool required'
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        if arg2 != msg.value:
            revert with 0, 'Incorrect amount of ETH sent'
        mem[(32 * arg5.length) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg4)
        call arg4.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 0 < arg5.length
        _14 = mem[128]
        mem[(32 * arg5.length) + 132] = mem[140 len 20]
        mem[(32 * arg5.length) + 164] = msg.value
        require ext_code.size(arg4)
        call arg4.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(_14), msg.value
        mem[(32 * arg5.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = 0
        s = arg2
        while idx < arg5.length:
            require idx < arg5.length
            _424 = mem[(32 * idx) + 128]
            if s <= 0:
                revert with 0, 
                            32,
                            39,
                            0xfe556e697377617056324c69623a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[(32 * arg5.length) + 235 len 25]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * arg5.length) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not Mask(1, 160, _424):
                if not s:
                    require Mask(112, 0, ext_call.return_data[0])
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    require 10000 * Mask(112, 0, ext_call.return_data[0])
                    if not Mask(1, 160, _424):
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_424))
                            call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _565 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            mem[(32 * arg5.length) + 196] = address(_565)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_424))
                            call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(_565), 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            mem[(32 * arg5.length) + 164] = 0
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_424))
                            call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _566 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            mem[(32 * arg5.length) + 164] = 0
                            mem[(32 * arg5.length) + 196] = address(_566)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_424))
                            call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_566), 128, 0, mem[(32 * arg5.length) + 292]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    continue 
                if Mask(95, 0, _424) >> 161 * s / s != Mask(95, 0, _424) >> 161:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                if not Mask(95, 0, _424) >> 161 * s:
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if Mask(95, 0, _424) >> 161 * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require Mask(95, 0, _424) >> 161 * s
                        if not Mask(1, 160, _424):
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 132] = 0
                                mem[(32 * arg5.length) + 164] = 0 / Mask(95, 0, _424) >> 161 * s
                                mem[(32 * arg5.length) + 196] = msg.sender
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_424))
                                call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / Mask(95, 0, _424) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                            else:
                                require idx + 1 < arg5.length
                                _563 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 132] = 0
                                mem[(32 * arg5.length) + 164] = 0 / Mask(95, 0, _424) >> 161 * s
                                mem[(32 * arg5.length) + 196] = address(_563)
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_424))
                                call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / Mask(95, 0, _424) >> 161 * s, address(_563), 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 132] = 0 / Mask(95, 0, _424) >> 161 * s
                                mem[(32 * arg5.length) + 164] = 0
                                mem[(32 * arg5.length) + 196] = msg.sender
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_424))
                                call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / Mask(95, 0, _424) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                            else:
                                require idx + 1 < arg5.length
                                _564 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 132] = 0 / Mask(95, 0, _424) >> 161 * s
                                mem[(32 * arg5.length) + 164] = 0
                                mem[(32 * arg5.length) + 196] = address(_564)
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_424))
                                call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / Mask(95, 0, _424) >> 161 * s, 0, address(_564), 128, 0, mem[(32 * arg5.length) + 292]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / Mask(95, 0, _424) >> 161 * s
                        continue 
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                    if (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    require (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                    if not Mask(1, 160, _424):
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = 0 / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_424))
                            call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _677 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = 0 / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            mem[(32 * arg5.length) + 196] = address(_677)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_424))
                            call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(_677), 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0 / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            mem[(32 * arg5.length) + 164] = 0
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_424))
                            call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _678 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0 / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            mem[(32 * arg5.length) + 164] = 0
                            mem[(32 * arg5.length) + 196] = address(_678)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_424))
                            call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_678), 128, 0, mem[(32 * arg5.length) + 292]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                    continue 
                if Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _424) >> 161 * s / Mask(95, 0, _424) >> 161 * s != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                if not Mask(112, 0, ext_call.return_data[0]):
                    if Mask(95, 0, _424) >> 161 * s < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require Mask(95, 0, _424) >> 161 * s
                    if not Mask(1, 160, _424):
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _424) >> 161 * s / Mask(95, 0, _424) >> 161 * s
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_424))
                            call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _424) >> 161 * s / Mask(95, 0, _424) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _675 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _424) >> 161 * s / Mask(95, 0, _424) >> 161 * s
                            mem[(32 * arg5.length) + 196] = address(_675)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_424))
                            call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _424) >> 161 * s / Mask(95, 0, _424) >> 161 * s, address(_675), 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _424) >> 161 * s / Mask(95, 0, _424) >> 161 * s
                            mem[(32 * arg5.length) + 164] = 0
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_424))
                            call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _424) >> 161 * s / Mask(95, 0, _424) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _676 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _424) >> 161 * s / Mask(95, 0, _424) >> 161 * s
                            mem[(32 * arg5.length) + 164] = 0
                            mem[(32 * arg5.length) + 196] = address(_676)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_424))
                            call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _424) >> 161 * s / Mask(95, 0, _424) >> 161 * s, 0, address(_676), 128, 0, mem[(32 * arg5.length) + 292]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _424) >> 161 * s / Mask(95, 0, _424) >> 161 * s
                    continue 
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                if (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                require (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                if not Mask(1, 160, _424):
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _424) >> 161 * s / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        mem[(32 * arg5.length) + 196] = msg.sender
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_424))
                        call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _424) >> 161 * s / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _775 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _424) >> 161 * s / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        mem[(32 * arg5.length) + 196] = address(_775)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_424))
                        call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _424) >> 161 * s / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(_775), 128, 0, mem[(32 * arg5.length) + 292]
                else:
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _424) >> 161 * s / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        mem[(32 * arg5.length) + 164] = 0
                        mem[(32 * arg5.length) + 196] = msg.sender
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_424))
                        call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _424) >> 161 * s / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _776 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _424) >> 161 * s / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        mem[(32 * arg5.length) + 164] = 0
                        mem[(32 * arg5.length) + 196] = address(_776)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_424))
                        call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _424) >> 161 * s / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_776), 128, 0, mem[(32 * arg5.length) + 292]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _424) >> 161 * s / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                continue 
            if not s:
                require Mask(112, 0, ext_call.return_data[32])
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: addition overflow'
                require 10000 * Mask(112, 0, ext_call.return_data[32])
                if not Mask(1, 160, _424):
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        mem[(32 * arg5.length) + 196] = msg.sender
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_424))
                        call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _569 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        mem[(32 * arg5.length) + 196] = address(_569)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_424))
                        call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(_569), 128, 0, mem[(32 * arg5.length) + 292]
                else:
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        mem[(32 * arg5.length) + 164] = 0
                        mem[(32 * arg5.length) + 196] = msg.sender
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_424))
                        call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _570 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        mem[(32 * arg5.length) + 164] = 0
                        mem[(32 * arg5.length) + 196] = address(_570)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_424))
                        call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_570), 128, 0, mem[(32 * arg5.length) + 292]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                continue 
            if Mask(95, 0, _424) >> 161 * s / s != Mask(95, 0, _424) >> 161:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
            if not Mask(95, 0, _424) >> 161 * s:
                if not Mask(112, 0, ext_call.return_data[32]):
                    if Mask(95, 0, _424) >> 161 * s < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require Mask(95, 0, _424) >> 161 * s
                    if not Mask(1, 160, _424):
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = 0 / Mask(95, 0, _424) >> 161 * s
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_424))
                            call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / Mask(95, 0, _424) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _567 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = 0 / Mask(95, 0, _424) >> 161 * s
                            mem[(32 * arg5.length) + 196] = address(_567)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_424))
                            call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / Mask(95, 0, _424) >> 161 * s, address(_567), 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0 / Mask(95, 0, _424) >> 161 * s
                            mem[(32 * arg5.length) + 164] = 0
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_424))
                            call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / Mask(95, 0, _424) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _568 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0 / Mask(95, 0, _424) >> 161 * s
                            mem[(32 * arg5.length) + 164] = 0
                            mem[(32 * arg5.length) + 196] = address(_568)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_424))
                            call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / Mask(95, 0, _424) >> 161 * s, 0, address(_568), 128, 0, mem[(32 * arg5.length) + 292]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / Mask(95, 0, _424) >> 161 * s
                    continue 
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                if (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: addition overflow'
                require (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                if not Mask(1, 160, _424):
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = 0 / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        mem[(32 * arg5.length) + 196] = msg.sender
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_424))
                        call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _681 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = 0 / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        mem[(32 * arg5.length) + 196] = address(_681)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_424))
                        call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(_681), 128, 0, mem[(32 * arg5.length) + 292]
                else:
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0 / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        mem[(32 * arg5.length) + 164] = 0
                        mem[(32 * arg5.length) + 196] = msg.sender
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_424))
                        call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _682 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0 / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        mem[(32 * arg5.length) + 164] = 0
                        mem[(32 * arg5.length) + 196] = address(_682)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_424))
                        call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_682), 128, 0, mem[(32 * arg5.length) + 292]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = 0 / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                continue 
            if Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _424) >> 161 * s / Mask(95, 0, _424) >> 161 * s != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
            if not Mask(112, 0, ext_call.return_data[32]):
                if Mask(95, 0, _424) >> 161 * s < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require Mask(95, 0, _424) >> 161 * s
                if not Mask(1, 160, _424):
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _424) >> 161 * s / Mask(95, 0, _424) >> 161 * s
                        mem[(32 * arg5.length) + 196] = msg.sender
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_424))
                        call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _424) >> 161 * s / Mask(95, 0, _424) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _679 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _424) >> 161 * s / Mask(95, 0, _424) >> 161 * s
                        mem[(32 * arg5.length) + 196] = address(_679)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_424))
                        call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _424) >> 161 * s / Mask(95, 0, _424) >> 161 * s, address(_679), 128, 0, mem[(32 * arg5.length) + 292]
                else:
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _424) >> 161 * s / Mask(95, 0, _424) >> 161 * s
                        mem[(32 * arg5.length) + 164] = 0
                        mem[(32 * arg5.length) + 196] = msg.sender
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_424))
                        call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _424) >> 161 * s / Mask(95, 0, _424) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _680 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _424) >> 161 * s / Mask(95, 0, _424) >> 161 * s
                        mem[(32 * arg5.length) + 164] = 0
                        mem[(32 * arg5.length) + 196] = address(_680)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_424))
                        call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _424) >> 161 * s / Mask(95, 0, _424) >> 161 * s, 0, address(_680), 128, 0, mem[(32 * arg5.length) + 292]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _424) >> 161 * s / Mask(95, 0, _424) >> 161 * s
                continue 
            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
            if (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: addition overflow'
            require (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
            if not Mask(1, 160, _424):
                if idx + 1 == arg5.length:
                    mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + 132] = 0
                    mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _424) >> 161 * s / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                    mem[(32 * arg5.length) + 196] = msg.sender
                    mem[(32 * arg5.length) + 228] = 128
                    mem[(32 * arg5.length) + 260] = 0
                    require ext_code.size(address(_424))
                    call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _424) >> 161 * s / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                else:
                    require idx + 1 < arg5.length
                    _777 = mem[(32 * idx + 1) + 128]
                    mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + 132] = 0
                    mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _424) >> 161 * s / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                    mem[(32 * arg5.length) + 196] = address(_777)
                    mem[(32 * arg5.length) + 228] = 128
                    mem[(32 * arg5.length) + 260] = 0
                    require ext_code.size(address(_424))
                    call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _424) >> 161 * s / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(_777), 128, 0, mem[(32 * arg5.length) + 292]
            else:
                if idx + 1 == arg5.length:
                    mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _424) >> 161 * s / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                    mem[(32 * arg5.length) + 164] = 0
                    mem[(32 * arg5.length) + 196] = msg.sender
                    mem[(32 * arg5.length) + 228] = 128
                    mem[(32 * arg5.length) + 260] = 0
                    require ext_code.size(address(_424))
                    call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _424) >> 161 * s / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                else:
                    require idx + 1 < arg5.length
                    _778 = mem[(32 * idx + 1) + 128]
                    mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _424) >> 161 * s / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                    mem[(32 * arg5.length) + 164] = 0
                    mem[(32 * arg5.length) + 196] = address(_778)
                    mem[(32 * arg5.length) + 228] = 128
                    mem[(32 * arg5.length) + 260] = 0
                    require ext_code.size(address(_424))
                    call address(_424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _424) >> 161 * s / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_778), 128, 0, mem[(32 * arg5.length) + 292]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _424) >> 161 * s / (Mask(95, 0, _424) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
            continue 
        if s < arg3:
            revert with 0, 
                        32,
                        43,
                        0x44556e69737761705632526f757465723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                        mem[(32 * arg5.length) + 239 len 21]
    else:
        require 0 < arg5.length
        _6 = mem[128]
        mem[(32 * arg5.length) + 128] = 0x15dacbea00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg5.length) + 132] = arg1
        mem[(32 * arg5.length) + 164] = msg.sender
        mem[(32 * arg5.length) + 196] = address(_6)
        mem[(32 * arg5.length) + 228] = arg2
        require ext_code.size(stor0)
        call stor0.transferFrom(address rg1, address rg2, address rg3, uint256 rg4) with:
             gas gas_remaining wei
            args address(arg1), msg.sender, address(_6), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        s = arg2
        while idx < arg5.length:
            require idx < arg5.length
            _423 = mem[(32 * idx) + 128]
            if s <= 0:
                revert with 0, 
                            32,
                            39,
                            0xfe556e697377617056324c69623a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[(32 * arg5.length) + 235 len 25]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * arg5.length) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not Mask(1, 160, _423):
                if not s:
                    require Mask(112, 0, ext_call.return_data[0])
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    require 10000 * Mask(112, 0, ext_call.return_data[0])
                    if not Mask(1, 160, _423):
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            if arg4:
                                mem[(32 * arg5.length) + 196] = this.address
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_423))
                                call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, 0, mem[(32 * arg5.length) + 292]
                            else:
                                mem[(32 * arg5.length) + 196] = msg.sender
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_423))
                                call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _557 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            mem[(32 * arg5.length) + 196] = address(_557)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(_557), 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            mem[(32 * arg5.length) + 164] = 0
                            if arg4:
                                mem[(32 * arg5.length) + 196] = this.address
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_423))
                                call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 292]
                            else:
                                mem[(32 * arg5.length) + 196] = msg.sender
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_423))
                                call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _558 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            mem[(32 * arg5.length) + 164] = 0
                            mem[(32 * arg5.length) + 196] = address(_558)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_558), 128, 0, mem[(32 * arg5.length) + 292]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    continue 
                if Mask(95, 0, _423) >> 161 * s / s != Mask(95, 0, _423) >> 161:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                if not Mask(95, 0, _423) >> 161 * s:
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if Mask(95, 0, _423) >> 161 * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require Mask(95, 0, _423) >> 161 * s
                        if not Mask(1, 160, _423):
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 132] = 0
                                mem[(32 * arg5.length) + 164] = 0 / Mask(95, 0, _423) >> 161 * s
                                if arg4:
                                    mem[(32 * arg5.length) + 196] = this.address
                                    mem[(32 * arg5.length) + 228] = 128
                                    mem[(32 * arg5.length) + 260] = 0
                                    require ext_code.size(address(_423))
                                    call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / Mask(95, 0, _423) >> 161 * s, address(this.address), 128, 0, mem[(32 * arg5.length) + 292]
                                else:
                                    mem[(32 * arg5.length) + 196] = msg.sender
                                    mem[(32 * arg5.length) + 228] = 128
                                    mem[(32 * arg5.length) + 260] = 0
                                    require ext_code.size(address(_423))
                                    call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / Mask(95, 0, _423) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                            else:
                                require idx + 1 < arg5.length
                                _555 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 132] = 0
                                mem[(32 * arg5.length) + 164] = 0 / Mask(95, 0, _423) >> 161 * s
                                mem[(32 * arg5.length) + 196] = address(_555)
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_423))
                                call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / Mask(95, 0, _423) >> 161 * s, address(_555), 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 132] = 0 / Mask(95, 0, _423) >> 161 * s
                                mem[(32 * arg5.length) + 164] = 0
                                if arg4:
                                    mem[(32 * arg5.length) + 196] = this.address
                                    mem[(32 * arg5.length) + 228] = 128
                                    mem[(32 * arg5.length) + 260] = 0
                                    require ext_code.size(address(_423))
                                    call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / Mask(95, 0, _423) >> 161 * s, 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 292]
                                else:
                                    mem[(32 * arg5.length) + 196] = msg.sender
                                    mem[(32 * arg5.length) + 228] = 128
                                    mem[(32 * arg5.length) + 260] = 0
                                    require ext_code.size(address(_423))
                                    call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / Mask(95, 0, _423) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                            else:
                                require idx + 1 < arg5.length
                                _556 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 132] = 0 / Mask(95, 0, _423) >> 161 * s
                                mem[(32 * arg5.length) + 164] = 0
                                mem[(32 * arg5.length) + 196] = address(_556)
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_423))
                                call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / Mask(95, 0, _423) >> 161 * s, 0, address(_556), 128, 0, mem[(32 * arg5.length) + 292]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / Mask(95, 0, _423) >> 161 * s
                        continue 
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                    if (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    require (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                    if not Mask(1, 160, _423):
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            if arg4:
                                mem[(32 * arg5.length) + 196] = this.address
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_423))
                                call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg5.length) + 292]
                            else:
                                mem[(32 * arg5.length) + 196] = msg.sender
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_423))
                                call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _669 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            mem[(32 * arg5.length) + 196] = address(_669)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(_669), 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            mem[(32 * arg5.length) + 164] = 0
                            if arg4:
                                mem[(32 * arg5.length) + 196] = this.address
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_423))
                                call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 292]
                            else:
                                mem[(32 * arg5.length) + 196] = msg.sender
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_423))
                                call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _670 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            mem[(32 * arg5.length) + 164] = 0
                            mem[(32 * arg5.length) + 196] = address(_670)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_670), 128, 0, mem[(32 * arg5.length) + 292]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                    continue 
                if Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                if not Mask(112, 0, ext_call.return_data[0]):
                    if Mask(95, 0, _423) >> 161 * s < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require Mask(95, 0, _423) >> 161 * s
                    if not Mask(1, 160, _423):
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s
                            if arg4:
                                mem[(32 * arg5.length) + 196] = this.address
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_423))
                                call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s, address(this.address), 128, 0, mem[(32 * arg5.length) + 292]
                            else:
                                mem[(32 * arg5.length) + 196] = msg.sender
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_423))
                                call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _667 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s
                            mem[(32 * arg5.length) + 196] = address(_667)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s, address(_667), 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s
                            mem[(32 * arg5.length) + 164] = 0
                            if arg4:
                                mem[(32 * arg5.length) + 196] = this.address
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_423))
                                call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s, 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 292]
                            else:
                                mem[(32 * arg5.length) + 196] = msg.sender
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_423))
                                call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _668 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s
                            mem[(32 * arg5.length) + 164] = 0
                            mem[(32 * arg5.length) + 196] = address(_668)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s, 0, address(_668), 128, 0, mem[(32 * arg5.length) + 292]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s
                    continue 
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                if (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                require (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                if not Mask(1, 160, _423):
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        if arg4:
                            mem[(32 * arg5.length) + 196] = this.address
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _771 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        mem[(32 * arg5.length) + 196] = address(_771)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_423))
                        call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(_771), 128, 0, mem[(32 * arg5.length) + 292]
                else:
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        mem[(32 * arg5.length) + 164] = 0
                        if arg4:
                            mem[(32 * arg5.length) + 196] = this.address
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _772 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        mem[(32 * arg5.length) + 164] = 0
                        mem[(32 * arg5.length) + 196] = address(_772)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_423))
                        call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_772), 128, 0, mem[(32 * arg5.length) + 292]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                continue 
            if not s:
                require Mask(112, 0, ext_call.return_data[32])
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: addition overflow'
                require 10000 * Mask(112, 0, ext_call.return_data[32])
                if not Mask(1, 160, _423):
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        if arg4:
                            mem[(32 * arg5.length) + 196] = this.address
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(this.address), 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _561 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        mem[(32 * arg5.length) + 196] = address(_561)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_423))
                        call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(_561), 128, 0, mem[(32 * arg5.length) + 292]
                else:
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        mem[(32 * arg5.length) + 164] = 0
                        if arg4:
                            mem[(32 * arg5.length) + 196] = this.address
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _562 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        mem[(32 * arg5.length) + 164] = 0
                        mem[(32 * arg5.length) + 196] = address(_562)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_423))
                        call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_562), 128, 0, mem[(32 * arg5.length) + 292]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                continue 
            if Mask(95, 0, _423) >> 161 * s / s != Mask(95, 0, _423) >> 161:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
            if not Mask(95, 0, _423) >> 161 * s:
                if not Mask(112, 0, ext_call.return_data[32]):
                    if Mask(95, 0, _423) >> 161 * s < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require Mask(95, 0, _423) >> 161 * s
                    if not Mask(1, 160, _423):
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = 0 / Mask(95, 0, _423) >> 161 * s
                            if arg4:
                                mem[(32 * arg5.length) + 196] = this.address
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_423))
                                call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / Mask(95, 0, _423) >> 161 * s, address(this.address), 128, 0, mem[(32 * arg5.length) + 292]
                            else:
                                mem[(32 * arg5.length) + 196] = msg.sender
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_423))
                                call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / Mask(95, 0, _423) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _559 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = 0 / Mask(95, 0, _423) >> 161 * s
                            mem[(32 * arg5.length) + 196] = address(_559)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / Mask(95, 0, _423) >> 161 * s, address(_559), 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0 / Mask(95, 0, _423) >> 161 * s
                            mem[(32 * arg5.length) + 164] = 0
                            if arg4:
                                mem[(32 * arg5.length) + 196] = this.address
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_423))
                                call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / Mask(95, 0, _423) >> 161 * s, 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 292]
                            else:
                                mem[(32 * arg5.length) + 196] = msg.sender
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_423))
                                call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / Mask(95, 0, _423) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _560 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0 / Mask(95, 0, _423) >> 161 * s
                            mem[(32 * arg5.length) + 164] = 0
                            mem[(32 * arg5.length) + 196] = address(_560)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / Mask(95, 0, _423) >> 161 * s, 0, address(_560), 128, 0, mem[(32 * arg5.length) + 292]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / Mask(95, 0, _423) >> 161 * s
                    continue 
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                if (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: addition overflow'
                require (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                if not Mask(1, 160, _423):
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        if arg4:
                            mem[(32 * arg5.length) + 196] = this.address
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _673 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        mem[(32 * arg5.length) + 196] = address(_673)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_423))
                        call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(_673), 128, 0, mem[(32 * arg5.length) + 292]
                else:
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        mem[(32 * arg5.length) + 164] = 0
                        if arg4:
                            mem[(32 * arg5.length) + 196] = this.address
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _674 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        mem[(32 * arg5.length) + 164] = 0
                        mem[(32 * arg5.length) + 196] = address(_674)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_423))
                        call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_674), 128, 0, mem[(32 * arg5.length) + 292]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = 0 / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                continue 
            if Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
            if not Mask(112, 0, ext_call.return_data[32]):
                if Mask(95, 0, _423) >> 161 * s < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require Mask(95, 0, _423) >> 161 * s
                if not Mask(1, 160, _423):
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s
                        if arg4:
                            mem[(32 * arg5.length) + 196] = this.address
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s, address(this.address), 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _671 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s
                        mem[(32 * arg5.length) + 196] = address(_671)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_423))
                        call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s, address(_671), 128, 0, mem[(32 * arg5.length) + 292]
                else:
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s
                        mem[(32 * arg5.length) + 164] = 0
                        if arg4:
                            mem[(32 * arg5.length) + 196] = this.address
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s, 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_423))
                            call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _672 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s
                        mem[(32 * arg5.length) + 164] = 0
                        mem[(32 * arg5.length) + 196] = address(_672)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_423))
                        call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s, 0, address(_672), 128, 0, mem[(32 * arg5.length) + 292]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / Mask(95, 0, _423) >> 161 * s
                continue 
            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
            if (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: addition overflow'
            require (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
            if not Mask(1, 160, _423):
                if idx + 1 == arg5.length:
                    mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + 132] = 0
                    mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                    if arg4:
                        mem[(32 * arg5.length) + 196] = this.address
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_423))
                        call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        mem[(32 * arg5.length) + 196] = msg.sender
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_423))
                        call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                else:
                    require idx + 1 < arg5.length
                    _773 = mem[(32 * idx + 1) + 128]
                    mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + 132] = 0
                    mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                    mem[(32 * arg5.length) + 196] = address(_773)
                    mem[(32 * arg5.length) + 228] = 128
                    mem[(32 * arg5.length) + 260] = 0
                    require ext_code.size(address(_423))
                    call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(_773), 128, 0, mem[(32 * arg5.length) + 292]
            else:
                if idx + 1 == arg5.length:
                    mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                    mem[(32 * arg5.length) + 164] = 0
                    if arg4:
                        mem[(32 * arg5.length) + 196] = this.address
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_423))
                        call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        mem[(32 * arg5.length) + 196] = msg.sender
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_423))
                        call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                else:
                    require idx + 1 < arg5.length
                    _774 = mem[(32 * idx + 1) + 128]
                    mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                    mem[(32 * arg5.length) + 164] = 0
                    mem[(32 * arg5.length) + 196] = address(_774)
                    mem[(32 * arg5.length) + 228] = 128
                    mem[(32 * arg5.length) + 260] = 0
                    require ext_code.size(address(_423))
                    call address(_423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_774), 128, 0, mem[(32 * arg5.length) + 292]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _423) >> 161 * s / (Mask(95, 0, _423) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
            continue 
        if not arg4:
            if s < arg3:
                revert with 0, 
                            32,
                            43,
                            0x44556e69737761705632526f757465723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                            mem[(32 * arg5.length) + 239 len 21]
        else:
            require ext_code.size(arg4)
            call arg4.withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value s wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                35,
                                0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                mem[(32 * arg5.length) + 263 len 29]
                if s < arg3:
                    revert with 0, 
                                32,
                                43,
                                0x44556e69737761705632526f757465723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[(32 * arg5.length) + 271 len 21]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                35,
                                0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 264 len 29]
                if s < arg3:
                    revert with 0, 
                                32,
                                43,
                                0x44556e69737761705632526f757465723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 272 len 21]
    ('ge', ('var', 1), ('param', 'arg3'))
}



}
