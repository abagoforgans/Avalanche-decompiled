contract main {




// =====================  Runtime code  =====================


const sub_8dc1564a(?) = 0x22d4002028f537599be9f666d1c4fa138522f9c8

const sub_c4f09877(?) = 0xc5536d59d026be19b4267810f43ac083cd607b64

const BentoBox = 0x640cee7fa90c00948b8e390127b4ee01c5396b9a

const sub_e17a1115(?) = 0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const POLE = 0x65069e550c5526c029dc9135edd02f6683859ac1

const USDT = 0xc7198437980c041c805a1edcba50c1ce5db95118


function _fallback() payable {
    revert
}

function swapExact(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    return 0
}

function swap(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(0x640cee7fa90c00948b8e390127b4ee01c5396b9a)
    call 0x640cee7fa90c00948b8e390127b4ee01c5396b9a.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, this.address, this.address, 0, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0xcdfd91eea657cc2701117fe9711c9a4f61feed23)
    call 0xcdfd91eea657cc2701117fe9711c9a4f61feed23.0xa9059cbb with:
         gas gas_remaining wei
        args 0xcdfd91eea657cc2701117fe9711c9a4f61feed23, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xcdfd91eea657cc2701117fe9711c9a4f61feed23)
    call 0xcdfd91eea657cc2701117fe9711c9a4f61feed23.burn(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0xcdfd91eea657cc2701117fe9711c9a4f61feed23)
    staticcall 0xcdfd91eea657cc2701117fe9711c9a4f61feed23.getReserves() with:
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
        require ext_code.size(0x22d4002028f537599be9f666d1c4fa138522f9c8)
        call 0x22d4002028f537599be9f666d1c4fa138522f9c8.0xa9059cbb with:
             gas gas_remaining wei
            args 0xcdfd91eea657cc2701117fe9711c9a4f61feed23, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xcdfd91eea657cc2701117fe9711c9a4f61feed23)
        call 0xcdfd91eea657cc2701117fe9711c9a4f61feed23.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0])), this.address, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
             gas gas_remaining wei
            args 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
        staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if 997 * ext_call.return_data[0] / 997 != ext_call.return_data[0]:
            revert with 0, 'BoringMath: Mul Overflow'
        if not Mask(112, 0, ext_call.return_data[32]):
            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'BoringMath: Mul Overflow'
            if (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 997 * ext_call.return_data[0]:
                revert with 0, 'BoringMath: Add Overflow'
            require (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
            call 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0])), this.address, 128, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e)
            call 0x001e3ba199b4ff4b5b6e97acd96dafc0e2e4156e.0xa3220db8 with:
                 gas gas_remaining wei
                args 0xc5536d59d026be19b4267810f43ac083cd607b64, 3, 0, 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, 0, 0, 0x640cee7fa90c00948b8e390127b4ee01c5396b9a
        else:
            require Mask(112, 0, ext_call.return_data[32])
            if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * ext_call.return_data[0]:
                revert with 0, 'BoringMath: Mul Overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'BoringMath: Mul Overflow'
            if (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 997 * ext_call.return_data[0]:
                revert with 0, 'BoringMath: Add Overflow'
            require (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
            call 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0])), this.address, 128, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e)
            call 0x001e3ba199b4ff4b5b6e97acd96dafc0e2e4156e.0xa3220db8 with:
                 gas gas_remaining wei
                args 0xc5536d59d026be19b4267810f43ac083cd607b64, 3, 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, 0, 0, 0x640cee7fa90c00948b8e390127b4ee01c5396b9a
    else:
        require ext_call.return_data[50 len 14]
        if 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Mul Overflow'
        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
        if (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[18 len 14]) < 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Add Overflow'
        require (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[18 len 14])
        require ext_code.size(0x22d4002028f537599be9f666d1c4fa138522f9c8)
        call 0x22d4002028f537599be9f666d1c4fa138522f9c8.0xa9059cbb with:
             gas gas_remaining wei
            args 0xcdfd91eea657cc2701117fe9711c9a4f61feed23, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xcdfd91eea657cc2701117fe9711c9a4f61feed23)
        call 0xcdfd91eea657cc2701117fe9711c9a4f61feed23.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0])), this.address, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
             gas gas_remaining wei
            args 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
        staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.getReserves() with:
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
            require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
            call 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0])), this.address, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e)
            call 0x001e3ba199b4ff4b5b6e97acd96dafc0e2e4156e.0xa3220db8 with:
                 gas gas_remaining wei
                args 0xc5536d59d026be19b4267810f43ac083cd607b64, 3, 0, 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, 0, 0, 0x640cee7fa90c00948b8e390127b4ee01c5396b9a
        else:
            require ext_call.return_data[50 len 14]
            if 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * ext_call.return_data[0]:
                revert with 0, 'BoringMath: Mul Overflow'
            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                revert with 0, 'BoringMath: Mul Overflow'
            if (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[18 len 14]) < 997 * ext_call.return_data[0]:
                revert with 0, 'BoringMath: Add Overflow'
            require (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[18 len 14])
            require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
            call 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0])), this.address, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e)
            call 0x001e3ba199b4ff4b5b6e97acd96dafc0e2e4156e.0xa3220db8 with:
                 gas gas_remaining wei
                args 0xc5536d59d026be19b4267810f43ac083cd607b64, 3, 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, 0, 0, 0x640cee7fa90c00948b8e390127b4ee01c5396b9a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x640cee7fa90c00948b8e390127b4ee01c5396b9a)
    call 0x640cee7fa90c00948b8e390127b4ee01c5396b9a.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args address(arg2), 0x640cee7fa90c00948b8e390127b4ee01c5396b9a, address(arg3), ext_call.return_data[0], 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] - arg4 > ext_call.return_data[32]:
        revert with 0, 'BoringMath: Underflow'
    return ext_call.return_data[32] - arg4, ext_call.return_data[32]
}



}
