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
    require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
    call 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.withdraw(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, 3137163059, address(this.address), address(this.address), 0, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33)
    call 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33.leave(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x454e67025631c065d3cfad6d71e6892f74487a15)
    staticcall 0x454e67025631c065d3cfad6d71e6892f74487a15.getReserves() with:
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
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0x454e67025631c065d3cfad6d71e6892f74487a15, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x454e67025631c065d3cfad6d71e6892f74487a15)
    call 0x454e67025631c065d3cfad6d71e6892f74487a15.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x781655d802670bba3c89aebaaea59d3182fd755d)
    staticcall 0x781655d802670bba3c89aebaaea59d3182fd755d.getReserves() with:
            gas gas_remaining wei
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
        args 0x781655d802670bba3c89aebaaea59d3182fd755d, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x781655d802670bba3c89aebaaea59d3182fd755d)
    call 0x781655d802670bba3c89aebaaea59d3182fd755d.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
    call 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.deposit(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0x130966628846bfd36ff31a822705796e8cb8c18d, address(this.address), address(arg3), 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), 0
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
