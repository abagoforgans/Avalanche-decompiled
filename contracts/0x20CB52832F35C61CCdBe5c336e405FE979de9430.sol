contract main {




// =====================  Runtime code  =====================


const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const USDC = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664

const USDCAVAX = 0xa389f9430876455c36478deea9769b7ca4e3ddb1

const MIM = 0x130966628846bfd36ff31a822705796e8cb8c18d

const DEGENBOX = 0x1fc83f75499b7620d53757f0b01e2ae626aae530

const MIMAVAX = 0x781655d802670bba3c89aebaaea59d3182fd755d


function _fallback() payable {
    revert
}

function swapExact(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    return 0
}

function swap(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    mem[132] = this.address
    mem[164] = this.address
    mem[196] = 0
    mem[228] = arg5
    require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
    call 0x1fc83f75499b7620d53757f0b01e2ae626aae530.withdraw(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, 2766396849, address(this.address), address(this.address), 0, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
    call 0xa389f9430876455c36478deea9769b7ca4e3ddb1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0xa389f9430876455c36478deea9769b7ca4e3ddb1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
    call 0xa389f9430876455c36478deea9769b7ca4e3ddb1.burn(address rg1) with:
         gas gas_remaining wei
        args this.address
    mem[(2 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[0] and 997 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 997 * ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if 1000 * ext_call.return_data[18 len 14] > (-997 * ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]):
        revert with 'NH{q', 18
    mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0xa389f9430876455c36478deea9769b7ca4e3ddb1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(7 * ceil32(return_data.size)) + 196] = this.address
    mem[(7 * ceil32(return_data.size)) + 228] = 128
    mem[(7 * ceil32(return_data.size)) + 260] = 0
    mem[(7 * ceil32(return_data.size)) + 292 len 0] = None
    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
    call 0xa389f9430876455c36478deea9769b7ca4e3ddb1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[32] > -(997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])) - 1:
        revert with 'NH{q', 17
    require ext_code.size(0x781655d802670bba3c89aebaaea59d3182fd755d)
    staticcall 0x781655d802670bba3c89aebaaea59d3182fd755d.getReserves() with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 128 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[32] + (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])) and 997 > -1 / ext_call.return_data[32] + (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])):
        revert with 'NH{q', 17
    if (997 * ext_call.return_data[32]) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])) and ext_call.return_data[18 len 14] > -1 / (997 * ext_call.return_data[32]) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])):
        revert with 'NH{q', 17
    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
        revert with 'NH{q', 17
    if 1000 * ext_call.return_data[50 len 14] > (-997 * ext_call.return_data[32]) + (-997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])) - 1:
        revert with 'NH{q', 17
    if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])):
        revert with 'NH{q', 18
    mem[(8 * ceil32(return_data.size)) + 132] = 0x781655d802670bba3c89aebaaea59d3182fd755d
    mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[32] + (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args mem[(8 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x781655d802670bba3c89aebaaea59d3182fd755d)
    call 0x781655d802670bba3c89aebaaea59d3182fd755d.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args (997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
    call 0x1fc83f75499b7620d53757f0b01e2ae626aae530.deposit(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0x130966628846bfd36ff31a822705796e8cb8c18d, address(this.address), address(arg3), (997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[32] < arg4:
        revert with 'NH{q', 17
    return ext_call.return_data[32] - arg4, ext_call.return_data[32]
}



}
