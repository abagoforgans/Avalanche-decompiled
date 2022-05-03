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
    require arg4.length >= 64
    require cd[(arg4 + 36)] == cd[(arg4 + 36)]
    require cd[(arg4 + 68)] == cd[(arg4 + 68)]
    require ext_code.size(0xe0327da3f94efe600569ca68aa02e6921fd89bfa)
    if 0xa389f9430876455c36478deea9769b7ca4e3ddb1 != msg.sender:
        call 0xe0327da3f94efe600569ca68aa02e6921fd89bfa.buyGem(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xa389f9430876455c36478deea9769b7ca4e3ddb1, cd[(arg4 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        call 0xa389f9430876455c36478deea9769b7ca4e3ddb1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, cd[(arg4 + 68)], address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
             gas gas_remaining wei
            args 0x559428a3c7b8885aa0d26ea3192c55be8c0908df, cd[(arg4 + 68)]
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
    else:
        call 0xe0327da3f94efe600569ca68aa02e6921fd89bfa.sellGem(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[132] = cd[(arg4 + 36)]
        require ext_code.size(0x87bade473ea0513d4aa7085484aeaa6cb6ebe7e3)
        call 0x87bade473ea0513d4aa7085484aeaa6cb6ebe7e3.0xa9059cbb with:
             gas gas_remaining wei
            args 0x559428a3c7b8885aa0d26ea3192c55be8c0908df, cd[(arg4 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        mem[ceil32(return_data.size) + 196] = this.address
        mem[ceil32(return_data.size) + 228] = 128
        mem[ceil32(return_data.size) + 260] = 0
        mem[ceil32(return_data.size) + 292 len 0] = None
        require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
        call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, cd[(arg4 + 68)], address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 132] = 0xa389f9430876455c36478deea9769b7ca4e3ddb1
        mem[ceil32(return_data.size) + 164] = cd[(arg4 + 68)]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
             gas gas_remaining wei
            args 0xa389f9430876455c36478deea9769b7ca4e3ddb1, cd[(arg4 + 68)]
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(0x87bade473ea0513d4aa7085484aeaa6cb6ebe7e3)
        staticcall 0x87bade473ea0513d4aa7085484aeaa6cb6ebe7e3.0x70a08231 with:
                gas gas_remaining wei
               args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 32]
        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < 10^18:
            mem[(4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 132] = 32
            mem[(4 * ceil32(return_data.size)) + 164] = 12
            mem[(4 * ceil32(return_data.size)) + 196] = 'unprofitable'
            revert with memory
              from (4 * ceil32(return_data.size)) + 128
               len (5 * ceil32(return_data.size)) + 100
        mem[(4 * ceil32(return_data.size)) + 132] = 0x1d64ceaf2cdbc9b6d41eb0f2f7cda8f04c47d1ac
        mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        require ext_code.size(0x87bade473ea0513d4aa7085484aeaa6cb6ebe7e3)
        call 0x87bade473ea0513d4aa7085484aeaa6cb6ebe7e3.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function rebalance() payable {
    require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
    staticcall 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] and 10^12 > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[32]) >= ext_call.return_data[50 len 14]:
        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) and 10^12 * ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if 10^12 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] <= 3:
            if 10^12 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] <= 0:
                if 10^12 * ext_call.return_data[18 len 14] <= 0:
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'balanced'
                    if 0 <= 10^12 * ext_call.return_data[18 len 14]:
                        revert with 0, 'balanced'
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) < 0:
                        revert with 'NH{q', 17
                    if 0 < 10^12 * ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if -1 * 10^12 * ext_call.return_data[18 len 14] and 10061 > -1 / -1 * 10^12 * ext_call.return_data[18 len 14]:
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
                    if -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 <= 10^12 * ext_call.return_data[0]:
                        if -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12 and 997 > -1 / -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12:
                            revert with 'NH{q', 17
                        if 10^12 * Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 10^15 * Mask(112, 0, ext_call.return_data[0]) > (-997 * -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12) - 1:
                            revert with 'NH{q', 17
                        if -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12:
                            revert with 'NH{q', 17
                        if -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if not (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12):
                            revert with 'NH{q', 18
                        require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                        call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, 64, -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12, 997 * -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12)
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) and 10^12 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if not -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000:
                            revert with 'NH{q', 18
                        if 10^12 * ext_call.return_data[0] / 10^12 and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                            revert with 'NH{q', 17
                        if 10^12 * Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 10^15 * Mask(112, 0, ext_call.return_data[0]) > (-997 * 10^12 * ext_call.return_data[0] / 10^12) - 1:
                            revert with 'NH{q', 17
                        if 10^12 * ext_call.return_data[0] / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                            revert with 'NH{q', 17
                        if 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if not (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * 10^12 * ext_call.return_data[0] / 10^12):
                            revert with 'NH{q', 18
                        require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                        call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000, 0, address(this.address), 128, 64, 10^12 * ext_call.return_data[0] / 10^12, 997 * 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * 10^12 * ext_call.return_data[0] / 10^12)
                else:
                    if 0 > Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]):
                        if 10^12 * ext_call.return_data[18 len 14] < 0:
                            revert with 'NH{q', 17
                        if 0 < Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if -Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) and 10061 > -1 / -Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if -10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) / 10000 and 997 > -1 / -10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) / 10000:
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) > (-997 * -10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) / 10000) - 1:
                            revert with 'NH{q', 17
                        if -10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) / 10000 and ext_call.return_data[50 len 14] > -1 / -10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) / 10000:
                            revert with 'NH{q', 17
                        if -10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) / 10000 * ext_call.return_data[50 len 14] and 997 > -1 / -10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) / 10000 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if not (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) + (997 * -10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) / 10000):
                            revert with 'NH{q', 18
                        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                        call 0xa389f9430876455c36478deea9769b7ca4e3ddb1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10^12, 0, address(this.address), 128, 64, -10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) / 10000, 997 * -10061 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * -10061 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000)
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'balanced'
                        if 0 <= 10^12 * ext_call.return_data[18 len 14]:
                            revert with 0, 'balanced'
                        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) < 0:
                            revert with 'NH{q', 17
                        if 0 < 10^12 * ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if -1 * 10^12 * ext_call.return_data[18 len 14] and 10061 > -1 / -1 * 10^12 * ext_call.return_data[18 len 14]:
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
                        if -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 <= 10^12 * ext_call.return_data[0]:
                            if -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12 and 997 > -1 / -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12:
                                revert with 'NH{q', 17
                            if 10^12 * Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if 10^15 * Mask(112, 0, ext_call.return_data[0]) > (-997 * -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12) - 1:
                                revert with 'NH{q', 17
                            if -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12:
                                revert with 'NH{q', 17
                            if -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 'NH{q', 17
                            if not (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12):
                                revert with 'NH{q', 18
                            require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                            call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, 64, -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12, 997 * -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000 / 10^12)
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) and 10^12 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 'NH{q', 17
                            if not -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000:
                                revert with 'NH{q', 18
                            if 10^12 * ext_call.return_data[0] / 10^12 and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                                revert with 'NH{q', 17
                            if 10^12 * Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if 10^15 * Mask(112, 0, ext_call.return_data[0]) > (-997 * 10^12 * ext_call.return_data[0] / 10^12) - 1:
                                revert with 'NH{q', 17
                            if 10^12 * ext_call.return_data[0] / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                                revert with 'NH{q', 17
                            if 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 'NH{q', 17
                            if not (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * 10^12 * ext_call.return_data[0] / 10^12):
                                revert with 'NH{q', 18
                            require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                            call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) / 10000, 0, address(this.address), 128, 64, 10^12 * ext_call.return_data[0] / 10^12, 997 * 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * 10^12 * ext_call.return_data[0] / 10^12)
            else:
                if 10^12 * ext_call.return_data[18 len 14] <= 1:
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) <= 1:
                        revert with 0, 'balanced'
                    if 1 <= 10^12 * ext_call.return_data[18 len 14]:
                        revert with 0, 'balanced'
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) < 1:
                        revert with 'NH{q', 17
                    if 1 < 10^12 * ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if (-1 * 10^12 * ext_call.return_data[18 len 14]) + 1 and 10061 > -1 / (-1 * 10^12 * ext_call.return_data[18 len 14]) + 1:
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
                    if (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 <= 10^12 * ext_call.return_data[0]:
                        if (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12 and 997 > -1 / (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12:
                            revert with 'NH{q', 17
                        if 10^12 * Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 10^15 * Mask(112, 0, ext_call.return_data[0]) > (-997 * (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12) - 1:
                            revert with 'NH{q', 17
                        if (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12:
                            revert with 'NH{q', 17
                        if (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if not (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12):
                            revert with 'NH{q', 18
                        require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                        call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) - 1, 0, address(this.address), 128, 64, (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12, 997 * (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12)
                    else:
                        if (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) - 1 and 10^12 * ext_call.return_data[0] > -1 / (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) - 1:
                            revert with 'NH{q', 17
                        if not (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000:
                            revert with 'NH{q', 18
                        if 10^12 * ext_call.return_data[0] / 10^12 and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                            revert with 'NH{q', 17
                        if 10^12 * Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 10^15 * Mask(112, 0, ext_call.return_data[0]) > (-997 * 10^12 * ext_call.return_data[0] / 10^12) - 1:
                            revert with 'NH{q', 17
                        if 10^12 * ext_call.return_data[0] / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                            revert with 'NH{q', 17
                        if 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if not (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * 10^12 * ext_call.return_data[0] / 10^12):
                            revert with 'NH{q', 18
                        require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                        call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (-1 * 10^12 * ext_call.return_data[0]) + (10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000, 0, address(this.address), 128, 64, 10^12 * ext_call.return_data[0] / 10^12, 997 * 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * 10^12 * ext_call.return_data[0] / 10^12)
                else:
                    if 1 > Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]):
                        if 10^12 * ext_call.return_data[18 len 14] < 1:
                            revert with 'NH{q', 17
                        if 1 < Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if -(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) + 1 and 10061 > -1 / -(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) + 1:
                            revert with 'NH{q', 17
                        if (-10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 and 997 > -1 / (-10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000:
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) > (-997 * (-10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000) - 1:
                            revert with 'NH{q', 17
                        if (-10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 and ext_call.return_data[50 len 14] > -1 / (-10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000:
                            revert with 'NH{q', 17
                        if (-10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 * ext_call.return_data[50 len 14] and 997 > -1 / (-10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if not (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) + (997 * (-10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000):
                            revert with 'NH{q', 18
                        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                        call 0xa389f9430876455c36478deea9769b7ca4e3ddb1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (10^12 * Mask(112, 0, ext_call.return_data[0])) - 1 / 10^12, 0, address(this.address), 128, 64, (-10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000, 997 * (-10061 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * (-10061 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000)
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) <= 1:
                            revert with 0, 'balanced'
                        if 1 <= 10^12 * ext_call.return_data[18 len 14]:
                            revert with 0, 'balanced'
                        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) < 1:
                            revert with 'NH{q', 17
                        if 1 < 10^12 * ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if (-1 * 10^12 * ext_call.return_data[18 len 14]) + 1 and 10061 > -1 / (-1 * 10^12 * ext_call.return_data[18 len 14]) + 1:
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
                        if (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 <= 10^12 * ext_call.return_data[0]:
                            if (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12 and 997 > -1 / (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12:
                                revert with 'NH{q', 17
                            if 10^12 * Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if 10^15 * Mask(112, 0, ext_call.return_data[0]) > (-997 * (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12) - 1:
                                revert with 'NH{q', 17
                            if (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12:
                                revert with 'NH{q', 17
                            if (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 'NH{q', 17
                            if not (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12):
                                revert with 'NH{q', 18
                            require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                            call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) - 1, 0, address(this.address), 128, 64, (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12, 997 * (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 / 10^12)
                        else:
                            if (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) - 1 and 10^12 * ext_call.return_data[0] > -1 / (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) - 1:
                                revert with 'NH{q', 17
                            if not (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000:
                                revert with 'NH{q', 18
                            if 10^12 * ext_call.return_data[0] / 10^12 and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                                revert with 'NH{q', 17
                            if 10^12 * Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if 10^15 * Mask(112, 0, ext_call.return_data[0]) > (-997 * 10^12 * ext_call.return_data[0] / 10^12) - 1:
                                revert with 'NH{q', 17
                            if 10^12 * ext_call.return_data[0] / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                                revert with 'NH{q', 17
                            if 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 'NH{q', 17
                            if not (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * 10^12 * ext_call.return_data[0] / 10^12):
                                revert with 'NH{q', 18
                            require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                            call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args (-1 * 10^12 * ext_call.return_data[0]) + (10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000, 0, address(this.address), 128, 64, 10^12 * ext_call.return_data[0] / 10^12, 997 * 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * 10^12 * ext_call.return_data[0] / 10^12)
        else:
            if 10^12 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / 2 > -2:
                revert with 'NH{q', 17
            s = (10^12 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / 2) + 1
            t = 10^12 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14]
            while s < t:
                if not s:
                    revert with 'NH{q', 18
                if 10^12 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / s > -s - 1:
                    revert with 'NH{q', 17
                s = (10^12 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / s) + s / 2
                t = s
                continue 
            if 10^12 * ext_call.return_data[18 len 14] <= t:
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) <= t:
                    revert with 0, 'balanced'
                if t <= 10^12 * ext_call.return_data[18 len 14]:
                    revert with 0, 'balanced'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) < t:
                    revert with 'NH{q', 17
                if t < 10^12 * ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if t - (10^12 * ext_call.return_data[18 len 14]) and 10061 > -1 / t - (10^12 * ext_call.return_data[18 len 14]):
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
                if (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 <= 10^12 * ext_call.return_data[0]:
                    if (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12 and 997 > -1 / (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12:
                        revert with 'NH{q', 17
                    if 10^12 * Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 10^15 * Mask(112, 0, ext_call.return_data[0]) > (-997 * (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12) - 1:
                        revert with 'NH{q', 17
                    if (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12:
                        revert with 'NH{q', 17
                    if (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if not (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12):
                        revert with 'NH{q', 18
                    require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                    call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) - t, 0, address(this.address), 128, 64, (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12, 997 * (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12)
                else:
                    if (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) - t and 10^12 * ext_call.return_data[0] > -1 / (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) - t:
                        revert with 'NH{q', 17
                    if not (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000:
                        revert with 'NH{q', 18
                    if 10^12 * ext_call.return_data[0] / 10^12 and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                        revert with 'NH{q', 17
                    if 10^12 * Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 10^15 * Mask(112, 0, ext_call.return_data[0]) > (-997 * 10^12 * ext_call.return_data[0] / 10^12) - 1:
                        revert with 'NH{q', 17
                    if 10^12 * ext_call.return_data[0] / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                        revert with 'NH{q', 17
                    if 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if not (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * 10^12 * ext_call.return_data[0] / 10^12):
                        revert with 'NH{q', 18
                    require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                    call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - (10^12 * t * ext_call.return_data[0]) / (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000, 0, address(this.address), 128, 64, 10^12 * ext_call.return_data[0] / 10^12, 997 * 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * 10^12 * ext_call.return_data[0] / 10^12)
            else:
                if t > Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]):
                    if 10^12 * ext_call.return_data[18 len 14] < t:
                        revert with 'NH{q', 17
                    if t < Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if t - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) and 10061 > -1 / t - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])):
                        revert with 'NH{q', 17
                    if (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) / 10000 and 997 > -1 / (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) / 10000:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) > (-997 * (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) / 10000) - 1:
                        revert with 'NH{q', 17
                    if (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) / 10000 and ext_call.return_data[50 len 14] > -1 / (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) / 10000:
                        revert with 'NH{q', 17
                    if (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) / 10000 * ext_call.return_data[50 len 14] and 997 > -1 / (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) / 10000 * ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if not (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) + (997 * (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) / 10000):
                        revert with 'NH{q', 18
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    call 0xa389f9430876455c36478deea9769b7ca4e3ddb1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (10^12 * Mask(112, 0, ext_call.return_data[0])) - t / 10^12, 0, address(this.address), 128, 64, (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32])) / 10000, 997 * (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000)
                else:
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) <= t:
                        revert with 0, 'balanced'
                    if t <= 10^12 * ext_call.return_data[18 len 14]:
                        revert with 0, 'balanced'
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) < t:
                        revert with 'NH{q', 17
                    if t < 10^12 * ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if t - (10^12 * ext_call.return_data[18 len 14]) and 10061 > -1 / t - (10^12 * ext_call.return_data[18 len 14]):
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
                    if (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 <= 10^12 * ext_call.return_data[0]:
                        if (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12 and 997 > -1 / (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12:
                            revert with 'NH{q', 17
                        if 10^12 * Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 10^15 * Mask(112, 0, ext_call.return_data[0]) > (-997 * (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12) - 1:
                            revert with 'NH{q', 17
                        if (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12:
                            revert with 'NH{q', 17
                        if (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if not (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12):
                            revert with 'NH{q', 18
                        require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                        call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) - t, 0, address(this.address), 128, 64, (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12, 997 * (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000 / 10^12)
                    else:
                        if (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) - t and 10^12 * ext_call.return_data[0] > -1 / (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) - t:
                            revert with 'NH{q', 17
                        if not (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000:
                            revert with 'NH{q', 18
                        if 10^12 * ext_call.return_data[0] / 10^12 and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                            revert with 'NH{q', 17
                        if 10^12 * Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 10^15 * Mask(112, 0, ext_call.return_data[0]) > (-997 * 10^12 * ext_call.return_data[0] / 10^12) - 1:
                            revert with 'NH{q', 17
                        if 10^12 * ext_call.return_data[0] / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                            revert with 'NH{q', 17
                        if 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if not (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * 10^12 * ext_call.return_data[0] / 10^12):
                            revert with 'NH{q', 18
                        require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                        call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - (10^12 * t * ext_call.return_data[0]) / (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0])) / 10000, 0, address(this.address), 128, 64, 10^12 * ext_call.return_data[0] / 10^12, 997 * 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (10^15 * Mask(112, 0, ext_call.return_data[0])) + (997 * 10^12 * ext_call.return_data[0] / 10^12)
    else:
        if 10^12 * ext_call.return_data[18 len 14] and Mask(112, 0, ext_call.return_data[32]) > -1 / 10^12 * ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if not ext_call.return_data[50 len 14]:
            revert with 'NH{q', 18
        if Mask(112, 0, ext_call.return_data[0]) and 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) * 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] <= 3:
            if Mask(112, 0, ext_call.return_data[0]) * 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] <= 0:
                if 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] <= 0:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'balanced'
                    if 0 <= 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]:
                        revert with 0, 'balanced'
                    if Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 'NH{q', 17
                    if 0 < 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if -10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] and 10061 > -1 / -10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]:
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
                    if -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 <= 10^12 * ext_call.return_data[0]:
                        if -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12 and 997 > -1 / -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12:
                            revert with 'NH{q', 17
                        if 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if 1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) > (-997 * -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12) - 1:
                            revert with 'NH{q', 17
                        if -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12:
                            revert with 'NH{q', 17
                        if -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if not (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12):
                            revert with 'NH{q', 18
                        require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                        call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] << 144, 0, address(this.address), 128, 64, -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12, 997 * -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12)
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and 10^12 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if not -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000:
                            revert with 'NH{q', 18
                        if 10^12 * ext_call.return_data[0] / 10^12 and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                            revert with 'NH{q', 17
                        if 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if 1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) > (-997 * 10^12 * ext_call.return_data[0] / 10^12) - 1:
                            revert with 'NH{q', 17
                        if 10^12 * ext_call.return_data[0] / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                            revert with 'NH{q', 17
                        if 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if not (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * 10^12 * ext_call.return_data[0] / 10^12):
                            revert with 'NH{q', 18
                        require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                        call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 10^12 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000, 0, address(this.address), 128, 64, 10^12 * ext_call.return_data[0] / 10^12, 997 * 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * 10^12 * ext_call.return_data[0] / 10^12)
                else:
                    if 0 > Mask(112, 0, ext_call.return_data[0]):
                        if 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] < 0:
                            revert with 'NH{q', 17
                        if 0 < Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if -Mask(112, 0, ext_call.return_data[0]) and 10061 > -1 / -Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if -10061 * Mask(112, 0, ext_call.return_data[0]) / 10000 and 997 > -1 / -10061 * Mask(112, 0, ext_call.return_data[0]) / 10000:
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * -10061 * Mask(112, 0, ext_call.return_data[0]) / 10000) - 1:
                            revert with 'NH{q', 17
                        if -10061 * Mask(112, 0, ext_call.return_data[0]) / 10000 and Mask(112, 0, ext_call.return_data[32]) > -1 / -10061 * Mask(112, 0, ext_call.return_data[0]) / 10000:
                            revert with 'NH{q', 17
                        if -10061 * Mask(112, 0, ext_call.return_data[0]) / 10000 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / -10061 * Mask(112, 0, ext_call.return_data[0]) / 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * -10061 * Mask(112, 0, ext_call.return_data[0]) / 10000):
                            revert with 'NH{q', 18
                        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                        call 0xa389f9430876455c36478deea9769b7ca4e3ddb1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10^12, 0, address(this.address), 128, 64, -10061 * Mask(112, 0, ext_call.return_data[0]) / 10000, 997 * -10061 * Mask(112, 0, ext_call.return_data[0]) / 10000 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * -10061 * Mask(112, 0, ext_call.return_data[0]) / 10000)
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'balanced'
                        if 0 <= 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]:
                            revert with 0, 'balanced'
                        if Mask(112, 0, ext_call.return_data[0]) < 0:
                            revert with 'NH{q', 17
                        if 0 < 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if -10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] and 10061 > -1 / -10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]:
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
                        if -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 <= 10^12 * ext_call.return_data[0]:
                            if -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12 and 997 > -1 / -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12:
                                revert with 'NH{q', 17
                            if 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 'NH{q', 17
                            if 1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) > (-997 * -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12) - 1:
                                revert with 'NH{q', 17
                            if -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12:
                                revert with 'NH{q', 17
                            if -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 'NH{q', 17
                            if not (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12):
                                revert with 'NH{q', 18
                            require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                            call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] << 144, 0, address(this.address), 128, 64, -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12, 997 * -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000 / 10^12)
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) and 10^12 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if not -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000:
                                revert with 'NH{q', 18
                            if 10^12 * ext_call.return_data[0] / 10^12 and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                                revert with 'NH{q', 17
                            if 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 'NH{q', 17
                            if 1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) > (-997 * 10^12 * ext_call.return_data[0] / 10^12) - 1:
                                revert with 'NH{q', 17
                            if 10^12 * ext_call.return_data[0] / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                                revert with 'NH{q', 17
                            if 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 'NH{q', 17
                            if not (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * 10^12 * ext_call.return_data[0] / 10^12):
                                revert with 'NH{q', 18
                            require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                            call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 10^12 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / -10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) / 10000, 0, address(this.address), 128, 64, 10^12 * ext_call.return_data[0] / 10^12, 997 * 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * 10^12 * ext_call.return_data[0] / 10^12)
            else:
                if 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] <= 1:
                    if Mask(112, 0, ext_call.return_data[0]) <= 1:
                        revert with 0, 'balanced'
                    if 1 <= 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]:
                        revert with 0, 'balanced'
                    if Mask(112, 0, ext_call.return_data[0]) < 1:
                        revert with 'NH{q', 17
                    if 1 < 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if -(10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]) + 1 and 10061 > -1 / -(10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]) + 1:
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
                    if (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 <= 10^12 * ext_call.return_data[0]:
                        if (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12 and 997 > -1 / (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12:
                            revert with 'NH{q', 17
                        if 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if 1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) > (-997 * (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12) - 1:
                            revert with 'NH{q', 17
                        if (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12:
                            revert with 'NH{q', 17
                        if (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if not (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12):
                            revert with 'NH{q', 18
                        require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                        call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args Mask(112, 0, ext_call.return_data[0]) - 1, 0, address(this.address), 128, 64, (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12, 997 * (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12)
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) - 1 and 10^12 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) - 1:
                            revert with 'NH{q', 17
                        if not (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000:
                            revert with 'NH{q', 18
                        if 10^12 * ext_call.return_data[0] / 10^12 and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                            revert with 'NH{q', 17
                        if 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if 1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) > (-997 * 10^12 * ext_call.return_data[0] / 10^12) - 1:
                            revert with 'NH{q', 17
                        if 10^12 * ext_call.return_data[0] / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                            revert with 'NH{q', 17
                        if 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if not (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * 10^12 * ext_call.return_data[0] / 10^12):
                            revert with 'NH{q', 18
                        require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                        call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (-1 * 10^12 * ext_call.return_data[0]) + (10^12 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000, 0, address(this.address), 128, 64, 10^12 * ext_call.return_data[0] / 10^12, 997 * 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * 10^12 * ext_call.return_data[0] / 10^12)
                else:
                    if 1 > Mask(112, 0, ext_call.return_data[0]):
                        if 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] < 1:
                            revert with 'NH{q', 17
                        if 1 < Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if -Mask(112, 0, ext_call.return_data[0]) + 1 and 10061 > -1 / -Mask(112, 0, ext_call.return_data[0]) + 1:
                            revert with 'NH{q', 17
                        if (-10061 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 and 997 > -1 / (-10061 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000:
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * (-10061 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000) - 1:
                            revert with 'NH{q', 17
                        if (-10061 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 and Mask(112, 0, ext_call.return_data[32]) > -1 / (-10061 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000:
                            revert with 'NH{q', 17
                        if (-10061 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / (-10061 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (-10061 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000):
                            revert with 'NH{q', 18
                        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                        call 0xa389f9430876455c36478deea9769b7ca4e3ddb1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) - 1 / 10^12, 0, address(this.address), 128, 64, (-10061 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000, 997 * (-10061 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (-10061 * Mask(112, 0, ext_call.return_data[0])) + 10061 / 10000)
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) <= 1:
                            revert with 0, 'balanced'
                        if 1 <= 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]:
                            revert with 0, 'balanced'
                        if Mask(112, 0, ext_call.return_data[0]) < 1:
                            revert with 'NH{q', 17
                        if 1 < 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if -(10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]) + 1 and 10061 > -1 / -(10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]) + 1:
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
                        if (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 <= 10^12 * ext_call.return_data[0]:
                            if (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12 and 997 > -1 / (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12:
                                revert with 'NH{q', 17
                            if 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 'NH{q', 17
                            if 1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) > (-997 * (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12) - 1:
                                revert with 'NH{q', 17
                            if (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12:
                                revert with 'NH{q', 17
                            if (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 'NH{q', 17
                            if not (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12):
                                revert with 'NH{q', 18
                            require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                            call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args Mask(112, 0, ext_call.return_data[0]) - 1, 0, address(this.address), 128, 64, (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12, 997 * (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000 / 10^12)
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) - 1 and 10^12 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            if not (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000:
                                revert with 'NH{q', 18
                            if 10^12 * ext_call.return_data[0] / 10^12 and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                                revert with 'NH{q', 17
                            if 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 'NH{q', 17
                            if 1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) > (-997 * 10^12 * ext_call.return_data[0] / 10^12) - 1:
                                revert with 'NH{q', 17
                            if 10^12 * ext_call.return_data[0] / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                                revert with 'NH{q', 17
                            if 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 'NH{q', 17
                            if not (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * 10^12 * ext_call.return_data[0] / 10^12):
                                revert with 'NH{q', 18
                            require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                            call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args (-1 * 10^12 * ext_call.return_data[0]) + (10^12 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (-10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + 10061 / 10000, 0, address(this.address), 128, 64, 10^12 * ext_call.return_data[0] / 10^12, 997 * 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * 10^12 * ext_call.return_data[0] / 10^12)
        else:
            if Mask(112, 0, ext_call.return_data[0]) * 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] / 2 > -2:
                revert with 'NH{q', 17
            s = (Mask(112, 0, ext_call.return_data[0]) * 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] / 2) + 1
            t = Mask(112, 0, ext_call.return_data[0]) * 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]
            while s < t:
                if not s:
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[0]) * 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] / s > -s - 1:
                    revert with 'NH{q', 17
                s = (Mask(112, 0, ext_call.return_data[0]) * 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] / s) + s / 2
                t = s
                continue 
            if 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] <= t:
                if Mask(112, 0, ext_call.return_data[0]) <= t:
                    revert with 0, 'balanced'
                if t <= 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]:
                    revert with 0, 'balanced'
                if Mask(112, 0, ext_call.return_data[0]) < t:
                    revert with 'NH{q', 17
                if t < 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if t - (10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]) and 10061 > -1 / t - (10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]):
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
                if (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 <= 10^12 * ext_call.return_data[0]:
                    if (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12 and 997 > -1 / (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12:
                        revert with 'NH{q', 17
                    if 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if 1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) > (-997 * (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12) - 1:
                        revert with 'NH{q', 17
                    if (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12:
                        revert with 'NH{q', 17
                    if (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if not (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12):
                        revert with 'NH{q', 18
                    require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                    call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args Mask(112, 0, ext_call.return_data[0]) - t, 0, address(this.address), 128, 64, (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12, 997 * (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12)
                else:
                    if Mask(112, 0, ext_call.return_data[0]) - t and 10^12 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) - t:
                        revert with 'NH{q', 17
                    if not (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000:
                        revert with 'NH{q', 18
                    if 10^12 * ext_call.return_data[0] / 10^12 and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                        revert with 'NH{q', 17
                    if 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if 1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) > (-997 * 10^12 * ext_call.return_data[0] / 10^12) - 1:
                        revert with 'NH{q', 17
                    if 10^12 * ext_call.return_data[0] / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                        revert with 'NH{q', 17
                    if 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if not (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * 10^12 * ext_call.return_data[0] / 10^12):
                        revert with 'NH{q', 18
                    require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                    call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (10^12 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (10^12 * t * ext_call.return_data[0]) / (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000, 0, address(this.address), 128, 64, 10^12 * ext_call.return_data[0] / 10^12, 997 * 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * 10^12 * ext_call.return_data[0] / 10^12)
            else:
                if t > Mask(112, 0, ext_call.return_data[0]):
                    if 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] < t:
                        revert with 'NH{q', 17
                    if t < Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if t - Mask(112, 0, ext_call.return_data[0]) and 10061 > -1 / t - Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0])) / 10000 and 997 > -1 / (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0])) / 10000:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0])) / 10000) - 1:
                        revert with 'NH{q', 17
                    if (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0])) / 10000 and Mask(112, 0, ext_call.return_data[32]) > -1 / (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0])) / 10000:
                        revert with 'NH{q', 17
                    if (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0])) / 10000 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0])) / 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0])) / 10000):
                        revert with 'NH{q', 18
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    call 0xa389f9430876455c36478deea9769b7ca4e3ddb1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) - t / 10^12, 0, address(this.address), 128, 64, (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0])) / 10000, 997 * (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0])) / 10000 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (10061 * t) - (10061 * Mask(112, 0, ext_call.return_data[0])) / 10000)
                else:
                    if Mask(112, 0, ext_call.return_data[0]) <= t:
                        revert with 0, 'balanced'
                    if t <= 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]:
                        revert with 0, 'balanced'
                    if Mask(112, 0, ext_call.return_data[0]) < t:
                        revert with 'NH{q', 17
                    if t < 10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if t - (10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]) and 10061 > -1 / t - (10^12 * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]):
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
                    if (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 <= 10^12 * ext_call.return_data[0]:
                        if (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12 and 997 > -1 / (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12:
                            revert with 'NH{q', 17
                        if 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if 1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) > (-997 * (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12) - 1:
                            revert with 'NH{q', 17
                        if (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12:
                            revert with 'NH{q', 17
                        if (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if not (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12):
                            revert with 'NH{q', 18
                        require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                        call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args Mask(112, 0, ext_call.return_data[0]) - t, 0, address(this.address), 128, 64, (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12, 997 * (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000 / 10^12)
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) - t and 10^12 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) - t:
                            revert with 'NH{q', 17
                        if not (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000:
                            revert with 'NH{q', 18
                        if 10^12 * ext_call.return_data[0] / 10^12 and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                            revert with 'NH{q', 17
                        if 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if 1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) > (-997 * 10^12 * ext_call.return_data[0] / 10^12) - 1:
                            revert with 'NH{q', 17
                        if 10^12 * ext_call.return_data[0] / 10^12 and Mask(112, 0, ext_call.return_data[32]) > -1 / 10^12 * ext_call.return_data[0] / 10^12:
                            revert with 'NH{q', 17
                        if 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if not (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * 10^12 * ext_call.return_data[0] / 10^12):
                            revert with 'NH{q', 18
                        require ext_code.size(0x559428a3c7b8885aa0d26ea3192c55be8c0908df)
                        call 0x559428a3c7b8885aa0d26ea3192c55be8c0908df.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (10^12 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (10^12 * t * ext_call.return_data[0]) / (10061 * t) - (10061 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) / 10000, 0, address(this.address), 128, 64, 10^12 * ext_call.return_data[0] / 10^12, 997 * 10^12 * ext_call.return_data[0] / 10^12 * Mask(112, 0, ext_call.return_data[32]) / (1000 * 10^12 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) + (997 * 10^12 * ext_call.return_data[0] / 10^12)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
