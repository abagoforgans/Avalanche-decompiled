contract main {




// =====================  Runtime code  =====================


#
#  - sub_5b1fff00(?)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
const sub_c0da1e68(?) = ext_call.return_data[0] << 192, ext_call.return_data[0] << 192, ext_call.return_data[0] << 192, ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, mem[(18 * ceil32(return_data.size)) + 1728 len 64], ext_call.return_data[0] << 192, ext_call.return_data[0] << 192, ext_call.return_data[0] << 192, ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, mem[(18 * ceil32(return_data.size)) + 1952 len 64], ext_call.return_data[0], ext_call.return_data[0]


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function recoverEth() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function recoverToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
}

function getReserve(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(6 * ceil32(return_data.size)) + 480] = ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(6 * ceil32(return_data.size)) + 512] = ext_call.return_data[31 len 1]
    mem[(8 * ceil32(return_data.size)) + 544] = address(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 576] = address(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 608] = address(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 640] = Mask(112, 0, ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 672] = Mask(112, 0, ext_call.return_data[32])
    mem[(8 * ceil32(return_data.size)) + 704] = mem[(6 * ceil32(return_data.size)) + 511 len 1]
    mem[(8 * ceil32(return_data.size)) + 736] = mem[(6 * ceil32(return_data.size)) + 543 len 1]
    return address(ext_call.return_data[0]), 
           address(ext_call.return_data[0]),
           address(ext_call.return_data[0]),
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           mem[(8 * ceil32(return_data.size)) + 704 len 64]
}

function sub_f46483a5(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if not arg2:
        mem[128] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
        mem[160] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[192] = 2
        mem[224 len 64] = call.data[calldata.size len 64]
        mem[224] = arg1
        idx = 0
        while idx < 1:
            require idx < 2
            _2076 = mem[(32 * idx) + 128]
            require idx + 1 < 2
            _2093 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                mem[292] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[292], address(_2093)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[288 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < 2
                if mem[(32 * idx) + 224] <= 0:
                    revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[393 len 27]
                if address(_2076) == address(_2076):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 34, 0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[390 len 30]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 34, 0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[390 len 30]
                    if not mem[(32 * idx) + 224]:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < 2
                        mem[(32 * idx + 1) + 224] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not 997 * mem[(32 * idx) + 224]:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 997 * mem[(32 * idx) + 224] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 997 * mem[(32 * idx) + 224]
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                            else:
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 224] = 0 / (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        else:
                            if 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 997 * mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 997 * mem[(32 * idx) + 224] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 997 * mem[(32 * idx) + 224]
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 224] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 997 * mem[(32 * idx) + 224]
                            else:
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 224] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 34, 0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[390 len 30]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 34, 0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[390 len 30]
                    if not mem[(32 * idx) + 224]:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < 2
                        mem[(32 * idx + 1) + 224] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not 997 * mem[(32 * idx) + 224]:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 997 * mem[(32 * idx) + 224] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 997 * mem[(32 * idx) + 224]
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                            else:
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 224] = 0 / (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 997 * mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 997 * mem[(32 * idx) + 224] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 997 * mem[(32 * idx) + 224]
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 224] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 997 * mem[(32 * idx) + 224]
                            else:
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 224] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                mem[292] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[292], address(_2093)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[288 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < 2
                if mem[(32 * idx) + 224] <= 0:
                    revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[393 len 27]
                if address(_2093) == address(_2076):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 34, 0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[390 len 30]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 34, 0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[390 len 30]
                    if not mem[(32 * idx) + 224]:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < 2
                        mem[(32 * idx + 1) + 224] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not 997 * mem[(32 * idx) + 224]:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 997 * mem[(32 * idx) + 224] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 997 * mem[(32 * idx) + 224]
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                            else:
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 224] = 0 / (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        else:
                            if 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 997 * mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 997 * mem[(32 * idx) + 224] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 997 * mem[(32 * idx) + 224]
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 224] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 997 * mem[(32 * idx) + 224]
                            else:
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 224] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 34, 0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[390 len 30]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 34, 0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[390 len 30]
                    if not mem[(32 * idx) + 224]:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < 2
                        mem[(32 * idx + 1) + 224] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not 997 * mem[(32 * idx) + 224]:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 997 * mem[(32 * idx) + 224] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 997 * mem[(32 * idx) + 224]
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                            else:
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 224] = 0 / (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 997 * mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 997 * mem[(32 * idx) + 224] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 997 * mem[(32 * idx) + 224]
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 224] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 997 * mem[(32 * idx) + 224]
                            else:
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 224] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * mem[(32 * idx) + 224]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
            idx = idx + 1
            continue 
        mem[292] = arg1
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb)
        staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb.MEMOTowMEMO(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[128] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[160] = 0xda67235dd5787d67955420c84ca1cecd4e5bb
        mem[ceil32(return_data.size) + 288] = 2
        mem[ceil32(return_data.size) + 320 len 64] = call.data[calldata.size len 64]
        mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
        idx = 1
        while idx:
            require idx - 1 < 2
            require idx < 2
            _4151 = mem[(32 * idx) + 128]
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not mem[(32 * idx - 1) + 140 len 20]:
                    revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                require ext_code.size(0xc35dadb65012ec5796536bd9864ed8773abc74c4)
                staticcall 0xc35dadb65012ec5796536bd9864ed8773abc74c4.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 384 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[ceil32(return_data.size) + 288]
                if mem[(32 * idx) + ceil32(return_data.size) + 320] <= 0:
                    revert with 0, 
                                32,
                                38,
                                0x594a6f654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[ceil32(return_data.size) + 490 len 26]
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    34,
                                    0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[ceil32(return_data.size) + 486 len 30]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    34,
                                    0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[ceil32(return_data.size) + 486 len 30]
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if mem[(32 * idx) + ceil32(return_data.size) + 320] > Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + ceil32(return_data.size) + 320]
                        if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) / Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + ceil32(return_data.size) + 320] != 997:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 485 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[ceil32(return_data.size) + 288]
                        mem[(32 * idx - 1) + ceil32(return_data.size) + 320] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1
                    else:
                        if mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + ceil32(return_data.size) + 320]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 485 len 31]
                        if not mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[0]):
                            if mem[(32 * idx) + ceil32(return_data.size) + 320] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: subtraction overflow'
                            require Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + ceil32(return_data.size) + 320]
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) / Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + ceil32(return_data.size) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 485 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[ceil32(return_data.size) + 288]
                            mem[(32 * idx - 1) + ceil32(return_data.size) + 320] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[0]) / mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 485 len 31]
                            if mem[(32 * idx) + ceil32(return_data.size) + 320] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: subtraction overflow'
                            require Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + ceil32(return_data.size) + 320]
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) / Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + ceil32(return_data.size) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 485 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])
                            if (1000 * mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1 < 1000 * mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[ceil32(return_data.size) + 288]
                            mem[(32 * idx - 1) + ceil32(return_data.size) + 320] = (1000 * mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    34,
                                    0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[ceil32(return_data.size) + 486 len 30]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    34,
                                    0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[ceil32(return_data.size) + 486 len 30]
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if mem[(32 * idx) + ceil32(return_data.size) + 320] > Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + ceil32(return_data.size) + 320]
                        if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) / Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + ceil32(return_data.size) + 320] != 997:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 485 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[ceil32(return_data.size) + 288]
                        mem[(32 * idx - 1) + ceil32(return_data.size) + 320] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1
                    else:
                        if mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + ceil32(return_data.size) + 320]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 485 len 31]
                        if not mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[32]):
                            if mem[(32 * idx) + ceil32(return_data.size) + 320] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow'
                            require Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + ceil32(return_data.size) + 320]
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) / Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + ceil32(return_data.size) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 485 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[ceil32(return_data.size) + 288]
                            mem[(32 * idx - 1) + ceil32(return_data.size) + 320] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[32]) / mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[32]) != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 485 len 31]
                            if mem[(32 * idx) + ceil32(return_data.size) + 320] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow'
                            require Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + ceil32(return_data.size) + 320]
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) / Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + ceil32(return_data.size) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 485 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])
                            if (1000 * mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1 < 1000 * mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[ceil32(return_data.size) + 288]
                            mem[(32 * idx - 1) + ceil32(return_data.size) + 320] = (1000 * mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                require ext_code.size(0xc35dadb65012ec5796536bd9864ed8773abc74c4)
                staticcall 0xc35dadb65012ec5796536bd9864ed8773abc74c4.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 384 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[ceil32(return_data.size) + 288]
                if mem[(32 * idx) + ceil32(return_data.size) + 320] <= 0:
                    revert with 0, 
                                32,
                                38,
                                0x594a6f654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[ceil32(return_data.size) + 490 len 26]
                if address(_4151) == mem[(32 * idx - 1) + 140 len 20]:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    34,
                                    0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[ceil32(return_data.size) + 486 len 30]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    34,
                                    0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[ceil32(return_data.size) + 486 len 30]
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if mem[(32 * idx) + ceil32(return_data.size) + 320] > Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + ceil32(return_data.size) + 320]
                        if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) / Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + ceil32(return_data.size) + 320] != 997:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 485 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[ceil32(return_data.size) + 288]
                        mem[(32 * idx - 1) + ceil32(return_data.size) + 320] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1
                    else:
                        if mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + ceil32(return_data.size) + 320]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 485 len 31]
                        if not mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[0]):
                            if mem[(32 * idx) + ceil32(return_data.size) + 320] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: subtraction overflow'
                            require Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + ceil32(return_data.size) + 320]
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) / Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + ceil32(return_data.size) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 485 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[ceil32(return_data.size) + 288]
                            mem[(32 * idx - 1) + ceil32(return_data.size) + 320] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[0]) / mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 485 len 31]
                            if mem[(32 * idx) + ceil32(return_data.size) + 320] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: subtraction overflow'
                            require Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + ceil32(return_data.size) + 320]
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) / Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + ceil32(return_data.size) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 485 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])
                            if (1000 * mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1 < 1000 * mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[ceil32(return_data.size) + 288]
                            mem[(32 * idx - 1) + ceil32(return_data.size) + 320] = (1000 * mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    34,
                                    0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[ceil32(return_data.size) + 486 len 30]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    34,
                                    0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[ceil32(return_data.size) + 486 len 30]
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if mem[(32 * idx) + ceil32(return_data.size) + 320] > Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + ceil32(return_data.size) + 320]
                        if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) / Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + ceil32(return_data.size) + 320] != 997:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 485 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[ceil32(return_data.size) + 288]
                        mem[(32 * idx - 1) + ceil32(return_data.size) + 320] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1
                    else:
                        if mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + ceil32(return_data.size) + 320]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 485 len 31]
                        if not mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[32]):
                            if mem[(32 * idx) + ceil32(return_data.size) + 320] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow'
                            require Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + ceil32(return_data.size) + 320]
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) / Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + ceil32(return_data.size) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 485 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[ceil32(return_data.size) + 288]
                            mem[(32 * idx - 1) + ceil32(return_data.size) + 320] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[32]) / mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[32]) != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 485 len 31]
                            if mem[(32 * idx) + ceil32(return_data.size) + 320] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow'
                            require Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + ceil32(return_data.size) + 320]
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) / Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + ceil32(return_data.size) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 485 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])
                            if (1000 * mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1 < 1000 * mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[ceil32(return_data.size) + 288]
                            mem[(32 * idx - 1) + ceil32(return_data.size) + 320] = (1000 * mem[(32 * idx) + ceil32(return_data.size) + 320] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + ceil32(return_data.size) + 320])) + 1
            idx = idx - 1
            continue 
        if 0 < mem[ceil32(return_data.size) + 288]:
            return mem[ceil32(return_data.size) + 320], mem[256]
        revert
    mem[128] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[160] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    mem[192] = 2
    mem[224 len 64] = call.data[calldata.size len 64]
    mem[256] = arg1
    idx = 1
    while idx:
        require idx - 1 < 2
        require idx < 2
        _2103 = mem[(32 * idx) + 128]
        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
            revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
            if not mem[(32 * idx - 1) + 140 len 20]:
                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[288 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[192]
            if mem[(32 * idx) + 224] <= 0:
                revert with 0, 32, 38, 0x594a6f654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[394 len 26]
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 32, 34, 0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[390 len 30]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 32, 34, 0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[390 len 30]
                if not Mask(112, 0, ext_call.return_data[0]):
                    if mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]
                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] != 997:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[192]
                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                else:
                    if mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + 224]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]):
                        if mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]
                        if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                    else:
                        if 1000 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]) / mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]
                        if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                        if (1000 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (1000 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
            else:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 32, 34, 0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[390 len 30]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 32, 34, 0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[390 len 30]
                if not Mask(112, 0, ext_call.return_data[32]):
                    if mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]
                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] != 997:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[192]
                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                else:
                    if mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + 224]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]):
                        if mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]
                        if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                    else:
                        if 1000 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]) / mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]) != 1000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]
                        if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                        if (1000 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (1000 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
        else:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[288 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[192]
            if mem[(32 * idx) + 224] <= 0:
                revert with 0, 32, 38, 0x594a6f654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[394 len 26]
            if address(_2103) == mem[(32 * idx - 1) + 140 len 20]:
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 32, 34, 0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[390 len 30]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 32, 34, 0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[390 len 30]
                if not Mask(112, 0, ext_call.return_data[0]):
                    if mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]
                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] != 997:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[192]
                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                else:
                    if mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + 224]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]):
                        if mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]
                        if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                    else:
                        if 1000 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]) / mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]
                        if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                        if (1000 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (1000 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
            else:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 32, 34, 0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[390 len 30]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 32, 34, 0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[390 len 30]
                if not Mask(112, 0, ext_call.return_data[32]):
                    if mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]
                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] != 997:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[192]
                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                else:
                    if mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + 224]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]):
                        if mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]
                        if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                    else:
                        if 1000 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]) / mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]) != 1000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]
                        if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                        if (1000 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (1000 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
        idx = idx - 1
        continue 
    require 0 < mem[192]
    mem[292] = arg1
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb)
    staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb.MEMOTowMEMO(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = 0xda67235dd5787d67955420c84ca1cecd4e5bb
    mem[160] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[ceil32(return_data.size) + 288] = 2
    mem[ceil32(return_data.size) + 320 len 64] = call.data[calldata.size len 64]
    mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
    idx = 0
    while idx < 1:
        require idx < 2
        _4142 = mem[(32 * idx) + 128]
        require idx + 1 < 2
        _4159 = mem[(32 * idx + 1) + 128]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
            mem[ceil32(return_data.size) + 388] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(0xc35dadb65012ec5796536bd9864ed8773abc74c4)
            staticcall 0xc35dadb65012ec5796536bd9864ed8773abc74c4.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[ceil32(return_data.size) + 388], address(_4159)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 384 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < 2
            if mem[(32 * idx) + ceil32(return_data.size) + 320] <= 0:
                revert with 0, 
                            32,
                            37,
                            0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[ceil32(return_data.size) + 489 len 27]
            if address(_4142) == address(_4142):
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                34,
                                0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[ceil32(return_data.size) + 486 len 30]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 
                                32,
                                34,
                                0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[ceil32(return_data.size) + 486 len 30]
                if not mem[(32 * idx) + ceil32(return_data.size) + 320]:
                    require Mask(112, 0, ext_call.return_data[0])
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 485 len 31]
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    require 1000 * Mask(112, 0, ext_call.return_data[0])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + ceil32(return_data.size) + 320] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                else:
                    if 997 * mem[(32 * idx) + ceil32(return_data.size) + 320] / mem[(32 * idx) + ceil32(return_data.size) + 320] != 997:
                        revert with 0, 
                                    32,
                                    33,
                                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 485 len 31]
                    if not 997 * mem[(32 * idx) + ceil32(return_data.size) + 320]:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 997 * mem[(32 * idx) + ceil32(return_data.size) + 320] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require 997 * mem[(32 * idx) + ceil32(return_data.size) + 320]
                            require idx + 1 < 2
                            mem[(32 * idx + 1) + ceil32(return_data.size) + 320] = 0 / 997 * mem[(32 * idx) + ceil32(return_data.size) + 320]
                        else:
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 485 len 31]
                            if (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            require idx + 1 < 2
                            mem[(32 * idx + 1) + ceil32(return_data.size) + 320] = 0 / (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    else:
                        if 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + ceil32(return_data.size) + 320] / 997 * mem[(32 * idx) + ceil32(return_data.size) + 320] != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 485 len 31]
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 997 * mem[(32 * idx) + ceil32(return_data.size) + 320] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require 997 * mem[(32 * idx) + ceil32(return_data.size) + 320]
                            require idx + 1 < 2
                            mem[(32 * idx + 1) + ceil32(return_data.size) + 320] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + ceil32(return_data.size) + 320] / 997 * mem[(32 * idx) + ceil32(return_data.size) + 320]
                        else:
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 485 len 31]
                            if (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            require idx + 1 < 2
                            mem[(32 * idx + 1) + ceil32(return_data.size) + 320] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + ceil32(return_data.size) + 320] / (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
            else:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 
                                32,
                                34,
                                0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[ceil32(return_data.size) + 486 len 30]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                34,
                                0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[ceil32(return_data.size) + 486 len 30]
                if not mem[(32 * idx) + ceil32(return_data.size) + 320]:
                    require Mask(112, 0, ext_call.return_data[32])
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 485 len 31]
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: addition overflow'
                    require 1000 * Mask(112, 0, ext_call.return_data[32])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + ceil32(return_data.size) + 320] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                else:
                    if 997 * mem[(32 * idx) + ceil32(return_data.size) + 320] / mem[(32 * idx) + ceil32(return_data.size) + 320] != 997:
                        revert with 0, 
                                    32,
                                    33,
                                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 485 len 31]
                    if not 997 * mem[(32 * idx) + ceil32(return_data.size) + 320]:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 997 * mem[(32 * idx) + ceil32(return_data.size) + 320] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require 997 * mem[(32 * idx) + ceil32(return_data.size) + 320]
                            require idx + 1 < 2
                            mem[(32 * idx + 1) + ceil32(return_data.size) + 320] = 0 / 997 * mem[(32 * idx) + ceil32(return_data.size) + 320]
                        else:
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 485 len 31]
                            if (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            require idx + 1 < 2
                            mem[(32 * idx + 1) + ceil32(return_data.size) + 320] = 0 / (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    else:
                        if 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + ceil32(return_data.size) + 320] / 997 * mem[(32 * idx) + ceil32(return_data.size) + 320] != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 485 len 31]
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 997 * mem[(32 * idx) + ceil32(return_data.size) + 320] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require 997 * mem[(32 * idx) + ceil32(return_data.size) + 320]
                            require idx + 1 < 2
                            mem[(32 * idx + 1) + ceil32(return_data.size) + 320] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + ceil32(return_data.size) + 320] / 997 * mem[(32 * idx) + ceil32(return_data.size) + 320]
                        else:
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 485 len 31]
                            if (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            require idx + 1 < 2
                            mem[(32 * idx + 1) + ceil32(return_data.size) + 320] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + ceil32(return_data.size) + 320] / (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
            mem[ceil32(return_data.size) + 388] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(0xc35dadb65012ec5796536bd9864ed8773abc74c4)
            staticcall 0xc35dadb65012ec5796536bd9864ed8773abc74c4.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[ceil32(return_data.size) + 388], address(_4159)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 384 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < 2
            if mem[(32 * idx) + ceil32(return_data.size) + 320] <= 0:
                revert with 0, 
                            32,
                            37,
                            0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[ceil32(return_data.size) + 489 len 27]
            if address(_4159) == address(_4142):
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                34,
                                0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[ceil32(return_data.size) + 486 len 30]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 
                                32,
                                34,
                                0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[ceil32(return_data.size) + 486 len 30]
                if not mem[(32 * idx) + ceil32(return_data.size) + 320]:
                    require Mask(112, 0, ext_call.return_data[0])
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 485 len 31]
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    require 1000 * Mask(112, 0, ext_call.return_data[0])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + ceil32(return_data.size) + 320] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                else:
                    if 997 * mem[(32 * idx) + ceil32(return_data.size) + 320] / mem[(32 * idx) + ceil32(return_data.size) + 320] != 997:
                        revert with 0, 
                                    32,
                                    33,
                                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 485 len 31]
                    if not 997 * mem[(32 * idx) + ceil32(return_data.size) + 320]:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 997 * mem[(32 * idx) + ceil32(return_data.size) + 320] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require 997 * mem[(32 * idx) + ceil32(return_data.size) + 320]
                            require idx + 1 < 2
                            mem[(32 * idx + 1) + ceil32(return_data.size) + 320] = 0 / 997 * mem[(32 * idx) + ceil32(return_data.size) + 320]
                        else:
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 485 len 31]
                            if (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            require idx + 1 < 2
                            mem[(32 * idx + 1) + ceil32(return_data.size) + 320] = 0 / (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    else:
                        if 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + ceil32(return_data.size) + 320] / 997 * mem[(32 * idx) + ceil32(return_data.size) + 320] != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 485 len 31]
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 997 * mem[(32 * idx) + ceil32(return_data.size) + 320] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require 997 * mem[(32 * idx) + ceil32(return_data.size) + 320]
                            require idx + 1 < 2
                            mem[(32 * idx + 1) + ceil32(return_data.size) + 320] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + ceil32(return_data.size) + 320] / 997 * mem[(32 * idx) + ceil32(return_data.size) + 320]
                        else:
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 485 len 31]
                            if (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            require idx + 1 < 2
                            mem[(32 * idx + 1) + ceil32(return_data.size) + 320] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + ceil32(return_data.size) + 320] / (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
            else:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 
                                32,
                                34,
                                0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[ceil32(return_data.size) + 486 len 30]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                34,
                                0x734a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[ceil32(return_data.size) + 486 len 30]
                if not mem[(32 * idx) + ceil32(return_data.size) + 320]:
                    require Mask(112, 0, ext_call.return_data[32])
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 485 len 31]
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: addition overflow'
                    require 1000 * Mask(112, 0, ext_call.return_data[32])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + ceil32(return_data.size) + 320] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                else:
                    if 997 * mem[(32 * idx) + ceil32(return_data.size) + 320] / mem[(32 * idx) + ceil32(return_data.size) + 320] != 997:
                        revert with 0, 
                                    32,
                                    33,
                                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 485 len 31]
                    if not 997 * mem[(32 * idx) + ceil32(return_data.size) + 320]:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 997 * mem[(32 * idx) + ceil32(return_data.size) + 320] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require 997 * mem[(32 * idx) + ceil32(return_data.size) + 320]
                            require idx + 1 < 2
                            mem[(32 * idx + 1) + ceil32(return_data.size) + 320] = 0 / 997 * mem[(32 * idx) + ceil32(return_data.size) + 320]
                        else:
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 485 len 31]
                            if (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            require idx + 1 < 2
                            mem[(32 * idx + 1) + ceil32(return_data.size) + 320] = 0 / (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    else:
                        if 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + ceil32(return_data.size) + 320] / 997 * mem[(32 * idx) + ceil32(return_data.size) + 320] != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 485 len 31]
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 997 * mem[(32 * idx) + ceil32(return_data.size) + 320] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require 997 * mem[(32 * idx) + ceil32(return_data.size) + 320]
                            require idx + 1 < 2
                            mem[(32 * idx + 1) + ceil32(return_data.size) + 320] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + ceil32(return_data.size) + 320] / 997 * mem[(32 * idx) + ceil32(return_data.size) + 320]
                        else:
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 485 len 31]
                            if (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            require idx + 1 < 2
                            mem[(32 * idx + 1) + ceil32(return_data.size) + 320] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + ceil32(return_data.size) + 320] / (997 * mem[(32 * idx) + ceil32(return_data.size) + 320]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
        idx = idx + 1
        continue 
    return mem[224], mem[ceil32(return_data.size) + 352]
}



}
