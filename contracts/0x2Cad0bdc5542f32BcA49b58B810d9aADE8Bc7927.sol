contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 32
    require cd[(arg4 + 36)] == cd[(arg4 + 36)]
    require ext_code.size(0xe0327da3f94efe600569ca68aa02e6921fd89bfa)
    if arg3 <= 0:
        call 0xe0327da3f94efe600569ca68aa02e6921fd89bfa.buyGem(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call 0xe0327da3f94efe600569ca68aa02e6921fd89bfa.sellGem(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x87bade473ea0513d4aa7085484aeaa6cb6ebe7e3)
        call 0x87bade473ea0513d4aa7085484aeaa6cb6ebe7e3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
    require ext_code.size(0x87bade473ea0513d4aa7085484aeaa6cb6ebe7e3)
    staticcall 0x87bade473ea0513d4aa7085484aeaa6cb6ebe7e3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 10^18:
        revert with 0, 'unprofitable'
    require ext_code.size(0x87bade473ea0513d4aa7085484aeaa6cb6ebe7e3)
    call 0x87bade473ea0513d4aa7085484aeaa6cb6ebe7e3.0xa9059cbb with:
         gas gas_remaining wei
        args 0x1d64ceaf2cdbc9b6d41eb0f2f7cda8f04c47d1ac, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function rebalance() payable {
    require ext_code.size(0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3)
    staticcall 0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[50 len 14] and 10^12 > -1 / ext_call.return_data[50 len 14]:
        revert with 'NH{q', 17
    if ext_call.return_data[18 len 14] and 10^12 * ext_call.return_data[50 len 14] > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if 10^12 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] <= 3:
        if 10^12 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] <= 0:
            if 10^12 * ext_call.return_data[50 len 14] <= 0:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'balanced'
                if 0 <= 10^12 * ext_call.return_data[50 len 14]:
                    revert with 0, 'balanced'
                if ext_call.return_data[18 len 14] < 0:
                    revert with 'NH{q', 17
                if 0 < 10^12 * ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if -1 * 10^12 * ext_call.return_data[50 len 14] and 10031 > -1 / -1 * 10^12 * ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                        gas gas_remaining wei
                       args 0x65764167ec4b38d611f961515b51a40628614018
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and 10^12 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if -10031 * 10^12 * Mask(112, 0, ext_call.return_data[32]) / 10000 <= 10^12 * ext_call.return_data[0]:
                    require ext_code.size(0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3)
                    call 0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] << 144, 0, address(this.address), 128, 32, -10031 * 10^12 * Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12
                else:
                    if Mask(112, 0, ext_call.return_data[0]) and 10^12 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if not -10031 * 10^12 * Mask(112, 0, ext_call.return_data[32]) / 10000:
                        revert with 'NH{q', 18
                    require ext_code.size(0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3)
                    call 0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 10^12 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / -10031 * 10^12 * Mask(112, 0, ext_call.return_data[32]) / 10000, 0, address(this.address), 128, 32, 10^12 * ext_call.return_data[0] / 10^12
            else:
                if 0 > ext_call.return_data[18 len 14]:
                    if 10^12 * ext_call.return_data[50 len 14] < 0:
                        revert with 'NH{q', 17
                    if 0 < ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if -ext_call.return_data[18 len 14] and 10031 > -1 / -ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    require ext_code.size(0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3)
                    call 0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 10^12 * Mask(112, 0, ext_call.return_data[32]) / 10^12, address(this.address), 128, 32, -10031 * ext_call.return_data[18 len 14] / 10000
                else:
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'balanced'
                    if 0 <= 10^12 * ext_call.return_data[50 len 14]:
                        revert with 0, 'balanced'
                    if ext_call.return_data[18 len 14] < 0:
                        revert with 'NH{q', 17
                    if 0 < 10^12 * ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if -1 * 10^12 * ext_call.return_data[50 len 14] and 10031 > -1 / -1 * 10^12 * ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                            gas gas_remaining wei
                           args 0x65764167ec4b38d611f961515b51a40628614018
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and 10^12 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if -10031 * 10^12 * Mask(112, 0, ext_call.return_data[32]) / 10000 <= 10^12 * ext_call.return_data[0]:
                        require ext_code.size(0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3)
                        call 0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] << 144, 0, address(this.address), 128, 32, -10031 * 10^12 * Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and 10^12 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if not -10031 * 10^12 * Mask(112, 0, ext_call.return_data[32]) / 10000:
                            revert with 'NH{q', 18
                        require ext_code.size(0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3)
                        call 0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 10^12 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / -10031 * 10^12 * Mask(112, 0, ext_call.return_data[32]) / 10000, 0, address(this.address), 128, 32, 10^12 * ext_call.return_data[0] / 10^12
        else:
            if 10^12 * ext_call.return_data[50 len 14] <= 1:
                if ext_call.return_data[18 len 14] <= 1:
                    revert with 0, 'balanced'
                if 1 <= 10^12 * ext_call.return_data[50 len 14]:
                    revert with 0, 'balanced'
                if ext_call.return_data[18 len 14] < 1:
                    revert with 'NH{q', 17
                if 1 < 10^12 * ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if (-1 * 10^12 * ext_call.return_data[50 len 14]) + 1 and 10031 > -1 / (-1 * 10^12 * ext_call.return_data[50 len 14]) + 1:
                    revert with 'NH{q', 17
                require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                        gas gas_remaining wei
                       args 0x65764167ec4b38d611f961515b51a40628614018
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and 10^12 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if (-10031 * 10^12 * Mask(112, 0, ext_call.return_data[32])) + 10031 / 10000 <= 10^12 * ext_call.return_data[0]:
                    require ext_code.size(0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3)
                    call 0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args Mask(112, 0, ext_call.return_data[0]) - 1, 0, address(this.address), 128, 32, (-10031 * 10^12 * Mask(112, 0, ext_call.return_data[32])) + 10031 / 10000 / 10^12
                else:
                    if Mask(112, 0, ext_call.return_data[0]) - 1 and 10^12 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    if not (-10031 * 10^12 * Mask(112, 0, ext_call.return_data[32])) + 10031 / 10000:
                        revert with 'NH{q', 18
                    require ext_code.size(0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3)
                    call 0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (-1 * 10^12 * ext_call.return_data[0]) + (10^12 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (-10031 * 10^12 * Mask(112, 0, ext_call.return_data[32])) + 10031 / 10000, 0, address(this.address), 128, 32, 10^12 * ext_call.return_data[0] / 10^12
            else:
                if 1 > ext_call.return_data[18 len 14]:
                    if 10^12 * ext_call.return_data[50 len 14] < 1:
                        revert with 'NH{q', 17
                    if 1 < ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if -ext_call.return_data[18 len 14] + 1 and 10031 > -1 / -ext_call.return_data[18 len 14] + 1:
                        revert with 'NH{q', 17
                    require ext_code.size(0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3)
                    call 0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (10^12 * Mask(112, 0, ext_call.return_data[32])) - 1 / 10^12, address(this.address), 128, 32, (-10031 * ext_call.return_data[18 len 14]) + 10031 / 10000
                else:
                    if ext_call.return_data[18 len 14] <= 1:
                        revert with 0, 'balanced'
                    if 1 <= 10^12 * ext_call.return_data[50 len 14]:
                        revert with 0, 'balanced'
                    if ext_call.return_data[18 len 14] < 1:
                        revert with 'NH{q', 17
                    if 1 < 10^12 * ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if (-1 * 10^12 * ext_call.return_data[50 len 14]) + 1 and 10031 > -1 / (-1 * 10^12 * ext_call.return_data[50 len 14]) + 1:
                        revert with 'NH{q', 17
                    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                            gas gas_remaining wei
                           args 0x65764167ec4b38d611f961515b51a40628614018
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and 10^12 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if (-10031 * 10^12 * Mask(112, 0, ext_call.return_data[32])) + 10031 / 10000 <= 10^12 * ext_call.return_data[0]:
                        require ext_code.size(0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3)
                        call 0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args Mask(112, 0, ext_call.return_data[0]) - 1, 0, address(this.address), 128, 32, (-10031 * 10^12 * Mask(112, 0, ext_call.return_data[32])) + 10031 / 10000 / 10^12
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) - 1 and 10^12 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) - 1:
                            revert with 'NH{q', 17
                        if not (-10031 * 10^12 * Mask(112, 0, ext_call.return_data[32])) + 10031 / 10000:
                            revert with 'NH{q', 18
                        require ext_code.size(0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3)
                        call 0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (-1 * 10^12 * ext_call.return_data[0]) + (10^12 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (-10031 * 10^12 * Mask(112, 0, ext_call.return_data[32])) + 10031 / 10000, 0, address(this.address), 128, 32, 10^12 * ext_call.return_data[0] / 10^12
    else:
        if 10^12 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / 2 > -2:
            revert with 'NH{q', 17
        s = (10^12 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / 2) + 1
        t = 10^12 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]
        while s < t:
            if not s:
                revert with 'NH{q', 18
            if 10^12 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / s > -s - 1:
                revert with 'NH{q', 17
            s = (10^12 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / s) + s / 2
            t = s
            continue 
        if 10^12 * ext_call.return_data[50 len 14] <= t:
            if ext_call.return_data[18 len 14] <= t:
                revert with 0, 'balanced'
            if t <= 10^12 * ext_call.return_data[50 len 14]:
                revert with 0, 'balanced'
            if ext_call.return_data[18 len 14] < t:
                revert with 'NH{q', 17
            if t < 10^12 * ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if t - (10^12 * ext_call.return_data[50 len 14]) and 10031 > -1 / t - (10^12 * ext_call.return_data[50 len 14]):
                revert with 'NH{q', 17
            require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
            staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                    gas gas_remaining wei
                   args 0x65764167ec4b38d611f961515b51a40628614018
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] and 10^12 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if (10031 * t) - (10031 * 10^12 * Mask(112, 0, ext_call.return_data[32])) / 10000 <= 10^12 * ext_call.return_data[0]:
                require ext_code.size(0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3)
                call 0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args Mask(112, 0, ext_call.return_data[0]) - t, 0, address(this.address), 128, 32, (10031 * t) - (10031 * 10^12 * Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12
            else:
                if Mask(112, 0, ext_call.return_data[0]) - t and 10^12 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) - t:
                    revert with 'NH{q', 17
                if not (10031 * t) - (10031 * 10^12 * Mask(112, 0, ext_call.return_data[32])) / 10000:
                    revert with 'NH{q', 18
                require ext_code.size(0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3)
                call 0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (10^12 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (10^12 * t * ext_call.return_data[0]) / (10031 * t) - (10031 * 10^12 * Mask(112, 0, ext_call.return_data[32])) / 10000, 0, address(this.address), 128, 32, 10^12 * ext_call.return_data[0] / 10^12
        else:
            if t > ext_call.return_data[18 len 14]:
                if 10^12 * ext_call.return_data[50 len 14] < t:
                    revert with 'NH{q', 17
                if t < ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if t - ext_call.return_data[18 len 14] and 10031 > -1 / t - ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                require ext_code.size(0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3)
                call 0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (10^12 * Mask(112, 0, ext_call.return_data[32])) - t / 10^12, address(this.address), 128, 32, (10031 * t) - (10031 * ext_call.return_data[18 len 14]) / 10000
            else:
                if ext_call.return_data[18 len 14] <= t:
                    revert with 0, 'balanced'
                if t <= 10^12 * ext_call.return_data[50 len 14]:
                    revert with 0, 'balanced'
                if ext_call.return_data[18 len 14] < t:
                    revert with 'NH{q', 17
                if t < 10^12 * ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if t - (10^12 * ext_call.return_data[50 len 14]) and 10031 > -1 / t - (10^12 * ext_call.return_data[50 len 14]):
                    revert with 'NH{q', 17
                require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                        gas gas_remaining wei
                       args 0x65764167ec4b38d611f961515b51a40628614018
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and 10^12 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if (10031 * t) - (10031 * 10^12 * Mask(112, 0, ext_call.return_data[32])) / 10000 <= 10^12 * ext_call.return_data[0]:
                    require ext_code.size(0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3)
                    call 0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args Mask(112, 0, ext_call.return_data[0]) - t, 0, address(this.address), 128, 32, (10031 * t) - (10031 * 10^12 * Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12
                else:
                    if Mask(112, 0, ext_call.return_data[0]) - t and 10^12 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) - t:
                        revert with 'NH{q', 17
                    if not (10031 * t) - (10031 * 10^12 * Mask(112, 0, ext_call.return_data[32])) / 10000:
                        revert with 'NH{q', 18
                    require ext_code.size(0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3)
                    call 0xbbda95e89e5d65a5d1178db1adc0d62d1c6f4bb3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (10^12 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (10^12 * t * ext_call.return_data[0]) / (10031 * t) - (10031 * 10^12 * Mask(112, 0, ext_call.return_data[32])) / 10000, 0, address(this.address), 128, 32, 10^12 * ext_call.return_data[0] / 10^12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
