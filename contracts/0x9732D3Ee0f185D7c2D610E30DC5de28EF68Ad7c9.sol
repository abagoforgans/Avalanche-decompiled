contract main {




// =====================  Runtime code  =====================


const sub_483a721b(?) = 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f

const JOEBAR = 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const MIM_WAVAX = 0x781655d802670bba3c89aebaaea59d3182fd755d

const MIM = 0x130966628846bfd36ff31a822705796e8cb8c18d

const JOE_WAVAX = 0x454e67025631c065d3cfad6d71e6892f74487a15

const JOE = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd


function _fallback() payable {
    revert
}

function swap(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[196] = 0
    mem[228] = arg3
    require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
    call 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.withdraw(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, 2360918413, address(this.address), address(this.address), 0, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(0x781655d802670bba3c89aebaaea59d3182fd755d)
    staticcall 0x781655d802670bba3c89aebaaea59d3182fd755d.getReserves() with:
            gas gas_remaining wei
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
    require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
    call 0x130966628846bfd36ff31a822705796e8cb8c18d.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0x781655d802670bba3c89aebaaea59d3182fd755d, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 196] = this.address
    mem[(4 * ceil32(return_data.size)) + 228] = 128
    mem[(4 * ceil32(return_data.size)) + 260] = 0
    mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
    require ext_code.size(0x781655d802670bba3c89aebaaea59d3182fd755d)
    call 0x781655d802670bba3c89aebaaea59d3182fd755d.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x454e67025631c065d3cfad6d71e6892f74487a15)
    staticcall 0x454e67025631c065d3cfad6d71e6892f74487a15.getReserves() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 128 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) and 997 > -1 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
        revert with 'NH{q', 17
    if 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
        revert with 'NH{q', 17
    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
        revert with 'NH{q', 17
    if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])) - 1:
        revert with 'NH{q', 17
    if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])):
        revert with 'NH{q', 18
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0x454e67025631c065d3cfad6d71e6892f74487a15, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), mem[(6 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 196] = 0
    mem[(8 * ceil32(return_data.size)) + 228] = this.address
    mem[(8 * ceil32(return_data.size)) + 260] = 128
    mem[(8 * ceil32(return_data.size)) + 292] = 0
    mem[(8 * ceil32(return_data.size)) + 324 len 0] = None
    require ext_code.size(0x454e67025631c065d3cfad6d71e6892f74487a15)
    call 0x454e67025631c065d3cfad6d71e6892f74487a15.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33)
    call 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33.enter(uint256 rg1) with:
         gas gas_remaining wei
        args (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33)
    staticcall 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33)
    call 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 228 len 17 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(12 * ceil32(return_data.size)) + 196] = 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f
    mem[(12 * ceil32(return_data.size)) + 228] = arg1
    mem[(12 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
    mem[(12 * ceil32(return_data.size)) + 292] = 0
    require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
    call 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.deposit(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33, 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f, address(arg1), ext_call.return_data[0], 0, mem[(12 * ceil32(return_data.size)) + 324 len 20 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[32] < arg2:
        revert with 'NH{q', 17
    return ext_call.return_data[32] - arg2, 
           ext_call.return_data[32],
           mem[(14 * ceil32(return_data.size)) + 224 len 24 * ceil32(return_data.size)]
}



}
