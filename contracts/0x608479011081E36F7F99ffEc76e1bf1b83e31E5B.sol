contract main {




// =====================  Runtime code  =====================


const sub_8a4d786b(?) = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664

const sub_c4f09877(?) = 0xc5536d59d026be19b4267810f43ac083cd607b64

const BentoBox = 0x17dd4518309d9be182605f44ab5b936ee4efc084

const sub_e17a1115(?) = 0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e

const POLE = 0x65069e550c5526c029dc9135edd02f6683859ac1

const USDC = 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e

const JOE = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd


function _fallback() payable {
    revert
}

function swapExact(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    return 0
}

function swap(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(0x17dd4518309d9be182605f44ab5b936ee4efc084)
    call 0x17dd4518309d9be182605f44ab5b936ee4efc084.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, this.address, this.address, 0, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x3bc40d4307cd946157447cd55d70ee7495ba6140)
    call 0x3bc40d4307cd946157447cd55d70ee7495ba6140.0xa9059cbb with:
         gas gas_remaining wei
        args 0x3bc40d4307cd946157447cd55d70ee7495ba6140, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x3bc40d4307cd946157447cd55d70ee7495ba6140)
    call 0x3bc40d4307cd946157447cd55d70ee7495ba6140.burn(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x3bc40d4307cd946157447cd55d70ee7495ba6140)
    staticcall 0x3bc40d4307cd946157447cd55d70ee7495ba6140.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if 997 * ext_call.return_data[0] / 997 != ext_call.return_data[0]:
        revert with 0, 'BoringMath: Mul Overflow'
    if not ext_call.return_data[50 len 14]:
        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
        if (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[18 len 14]) < 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Add Overflow'
        require (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[18 len 14])
        require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
        call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
             gas gas_remaining wei
            args 0x3bc40d4307cd946157447cd55d70ee7495ba6140, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x3bc40d4307cd946157447cd55d70ee7495ba6140)
        call 0x3bc40d4307cd946157447cd55d70ee7495ba6140.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0])), this.address, 128, 0
    else:
        require ext_call.return_data[50 len 14]
        if 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Mul Overflow'
        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
        if (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[18 len 14]) < 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Add Overflow'
        require (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[18 len 14])
        require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
        call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
             gas gas_remaining wei
            args 0x3bc40d4307cd946157447cd55d70ee7495ba6140, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x3bc40d4307cd946157447cd55d70ee7495ba6140)
        call 0x3bc40d4307cd946157447cd55d70ee7495ba6140.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0])), this.address, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x2a8a315e82f85d1f0658c5d66a452bbdd9356783)
    staticcall 0x2a8a315e82f85d1f0658c5d66a452bbdd9356783.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e)
    staticcall 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 997 * ext_call.return_data[0] / 997 != ext_call.return_data[0]:
        revert with 0, 'BoringMath: Mul Overflow'
    if not Mask(112, 0, ext_call.return_data[0]):
        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'BoringMath: Mul Overflow'
        if (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Add Overflow'
        require (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
        require ext_code.size(0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e)
        call 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e.0xa9059cbb with:
             gas gas_remaining wei
            args 0x2a8a315e82f85d1f0658c5d66a452bbdd9356783, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x2a8a315e82f85d1f0658c5d66a452bbdd9356783)
        call 0x2a8a315e82f85d1f0658c5d66a452bbdd9356783.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, this.address, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e)
        call 0x001e3ba199b4ff4b5b6e97acd96dafc0e2e4156e.0xa3220db8 with:
             gas gas_remaining wei
            args 0xc5536d59d026be19b4267810f43ac083cd607b64, 2, 0, ext_call.return_data[0], 0, 0x17dd4518309d9be182605f44ab5b936ee4efc084
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x17dd4518309d9be182605f44ab5b936ee4efc084)
        call 0x17dd4518309d9be182605f44ab5b936ee4efc084.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args address(arg2), 0x17dd4518309d9be182605f44ab5b936ee4efc084, address(arg3), ext_call.return_data[0], 0
    else:
        require Mask(112, 0, ext_call.return_data[0])
        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Mul Overflow'
        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'BoringMath: Mul Overflow'
        if (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Add Overflow'
        require (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
        require ext_code.size(0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e)
        call 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e.0xa9059cbb with:
             gas gas_remaining wei
            args 0x2a8a315e82f85d1f0658c5d66a452bbdd9356783, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x2a8a315e82f85d1f0658c5d66a452bbdd9356783)
        call 0x2a8a315e82f85d1f0658c5d66a452bbdd9356783.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, this.address, 128, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e)
        call 0x001e3ba199b4ff4b5b6e97acd96dafc0e2e4156e.0xa3220db8 with:
             gas gas_remaining wei
            args 0xc5536d59d026be19b4267810f43ac083cd607b64, 2, 0, ext_call.return_data[0], 0, 0, 0, 0x17dd4518309d9be182605f44ab5b936ee4efc084
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x17dd4518309d9be182605f44ab5b936ee4efc084)
        call 0x17dd4518309d9be182605f44ab5b936ee4efc084.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args address(arg2), 0x17dd4518309d9be182605f44ab5b936ee4efc084, address(arg3), ext_call.return_data[0], 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] - arg4 > ext_call.return_data[32]:
        revert with 0, 'BoringMath: Underflow'
    return ext_call.return_data[32] - arg4, ext_call.return_data[32]
}



}
