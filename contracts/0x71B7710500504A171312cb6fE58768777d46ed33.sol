contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_f34e309b(?) payable {
    require calldata.size - 4 >= 64
    if arg1 > 0:
        require ext_code.size(arg2)
        staticcall arg2.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0xed2a7edd7413021d440b09d654f3b87712abab66
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(arg2) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), 0xed2a7edd7413021d440b09d6, 0, Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
        mem[324 len 0] = 0
        call arg2.0x12abab66 with:
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] + arg1) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0xed2a7edd7413021d440b09d6, 0, ext_call.return_data[0] + arg1
            if not approve(address arg1, uint256 arg2), 0xed2a7edd7413021d440b09d6:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if not arg1:
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0, 96, 0, block.timestamp + 600, 68, 0, mem[520 len 2112]
            else:
                require arg1
                if 10^12 * arg1 / arg1 != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                if not 10^12 * arg1:
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                    call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args 0, 96, 0, block.timestamp + 600, 68, 0, mem[520 len 2112]
                else:
                    require 10^12 * arg1
                    if 499 * 10^12 * arg1 / 10^12 * arg1 != 499:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                    call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args 0, 96, 499 * 10^12 * arg1 / 500, block.timestamp + 600, 68, 0, mem[520 len 2112]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            if not arg1:
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 96, 0, block.timestamp + 600, 68, 0, mem[ceil32(return_data.size) + 521 len 2112]
            else:
                require arg1
                if 10^12 * arg1 / arg1 != 10^12:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 362 len 31]
                if not 10^12 * arg1:
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                    call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args 96, 0, block.timestamp + 600, 68, 0, mem[ceil32(return_data.size) + 521 len 2112]
                else:
                    require 10^12 * arg1
                    if 499 * 10^12 * arg1 / 10^12 * arg1 != 499:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 362 len 31]
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                    call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args 96, 499 * 10^12 * arg1 / 500, block.timestamp + 600, 68, 0, mem[ceil32(return_data.size) + 521 len 2112]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
