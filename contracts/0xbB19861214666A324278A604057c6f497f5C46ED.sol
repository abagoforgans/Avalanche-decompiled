contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_f34e309b(?) payable {
    require calldata.size - 4 >= 64
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(arg2) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
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
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
            if ext_code.size(arg2) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = 0, 0xed2a7edd7413021d440b09d654f3b87712abab66, Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
            call arg2.0x12abab66 with:
                 gas gas_remaining wei
                args ext_call.return_data[0] + arg1, mem[392 len 24], 0, mem[520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                if not arg1:
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                    call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args 96, 0, block.timestamp + 600, 100, 0, 0, arg1 >> 512, mem[748 len 3104]
                else:
                    require arg1
                    if 10^12 * arg1 / arg1 != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 31]
                    if not 10^12 * arg1:
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                        call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 96, 0, block.timestamp + 600, 100, 0, 0, arg1 >> 512, mem[748 len 3104]
                    else:
                        require 10^12 * arg1
                        if 499 * 10^12 * arg1 / 10^12 * arg1 != 499:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 31]
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                        call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args Array(len=100, data=0, 0, arg1 >> 512, mem[748 len 3104]), 499 * 10^12 * arg1 / 500, block.timestamp + 600
            else:
                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                if not arg1:
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                    call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args 96, 0, block.timestamp + 600, 100, 0, 0, arg1 >> 512, mem[ceil32(return_data.size) + 749 len 3104]
                else:
                    require arg1
                    if 10^12 * arg1 / arg1 != 10^12:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 558 len 31]
                    if not 10^12 * arg1:
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                        call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 96, 0, block.timestamp + 600, 100, 0, 0, arg1 >> 512, mem[ceil32(return_data.size) + 749 len 3104]
                    else:
                        require 10^12 * arg1
                        if 499 * 10^12 * arg1 / 10^12 * arg1 != 499:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 558 len 31]
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                        call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args Array(len=100, data=0, 0, arg1 >> 512, mem[ceil32(return_data.size) + 749 len 3104]), 499 * 10^12 * arg1 / 500, block.timestamp + 600
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
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
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if ext_code.size(arg2) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, 0xed2a7edd7413021d440b09d654f3b87712abab66, Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
                call arg2.0x12abab66 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] + arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                    if not arg1:
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                        call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 96, 0, block.timestamp + 600, 100, 0, 0, arg1 >> 512, mem[ceil32(return_data.size) + 749 len 3104]
                    else:
                        require arg1
                        if 10^12 * arg1 / arg1 != 10^12:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 558 len 31]
                        if not 10^12 * arg1:
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                            call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args 96, 0, block.timestamp + 600, 100, 0, 0, arg1 >> 512, mem[ceil32(return_data.size) + 749 len 3104]
                        else:
                            require 10^12 * arg1
                            if 499 * 10^12 * arg1 / 10^12 * arg1 != 499:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 558 len 31]
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                            call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args Array(len=100, data=0, 0, arg1 >> 512, mem[ceil32(return_data.size) + 749 len 3104]), 499 * 10^12 * arg1 / 500, block.timestamp + 600
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if not arg1:
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 
                                        'SafeMath: addition overflow',
                                        mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                        call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 96, 0, block.timestamp + 600, 100, 0, 0, arg1 >> 512, mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 3104]
                    else:
                        require arg1
                        if 10^12 * arg1 / arg1 != 10^12:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                        if not 10^12 * arg1:
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                            call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args 96, 0, block.timestamp + 600, 100, 0, 0, arg1 >> 512, mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 3104]
                        else:
                            require 10^12 * arg1
                            if 499 * 10^12 * arg1 / 10^12 * arg1 != 499:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                            call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args Array(len=100, data=0, 0, arg1 >> 512, mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 3104]), 499 * 10^12 * arg1 / 500, block.timestamp + 600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
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
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if ext_code.size(arg2) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, 0xed2a7edd7413021d440b09d654f3b87712abab66, Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
                call arg2.0x12abab66 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] + arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                    if not arg1:
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                        call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 96, 0, block.timestamp + 600, 100, 0, 0, arg1 >> 512, mem[ceil32(return_data.size) + 749 len 3104]
                    else:
                        require arg1
                        if 10^12 * arg1 / arg1 != 10^12:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 558 len 31]
                        if not 10^12 * arg1:
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                            call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args 96, 0, block.timestamp + 600, 100, 0, 0, arg1 >> 512, mem[ceil32(return_data.size) + 749 len 3104]
                        else:
                            require 10^12 * arg1
                            if 499 * 10^12 * arg1 / 10^12 * arg1 != 499:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 558 len 31]
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                            call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args Array(len=100, data=0, 0, arg1 >> 512, mem[ceil32(return_data.size) + 749 len 3104]), 499 * 10^12 * arg1 / 500, block.timestamp + 600
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                    if not arg1:
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                        call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 96, 0, block.timestamp + 600, 100, 0, 0, arg1 >> 512, mem[(2 * ceil32(return_data.size)) + 750 len 3104]
                    else:
                        require arg1
                        if 10^12 * arg1 / arg1 != 10^12:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(2 * ceil32(return_data.size)) + 559 len 31]
                        if not 10^12 * arg1:
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                            call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args 96, 0, block.timestamp + 600, 100, 0, 0, arg1 >> 512, mem[(2 * ceil32(return_data.size)) + 750 len 3104]
                        else:
                            require 10^12 * arg1
                            if 499 * 10^12 * arg1 / 10^12 * arg1 != 499:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 559 len 31]
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(0xed2a7edd7413021d440b09d654f3b87712abab66)
                            call 0xed2a7edd7413021d440b09d654f3b87712abab66.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args Array(len=100, data=0, 0, arg1 >> 512, mem[(2 * ceil32(return_data.size)) + 750 len 3104]), 499 * 10^12 * arg1 / 500, block.timestamp + 600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
