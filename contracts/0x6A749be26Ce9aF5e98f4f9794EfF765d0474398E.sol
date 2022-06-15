contract main {




// =====================  Runtime code  =====================


const sub_3c9b375f(?) = 0x78bf833aae77ebf62c21a9a5a6993a691810f2e1

const sub_58b36f5a(?) = 0x95c8c21c261e3855b62f45121197c5a533a8a4a3

const sub_c4f09877(?) = 0xc5536d59d026be19b4267810f43ac083cd607b64

const BentoBox = 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3

const sub_e035ba52(?) = 0x80277a98bd53aa835ec4cb7aedf04ac8fbac5e3c

const sub_e17a1115(?) = 0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e

const POLE = 0x65069e550c5526c029dc9135edd02f6683859ac1

const STAKING_MANAGER = 0xbde1c85c9faa18bc6e8eda1e2d813e63f86fd145

const USDT = 0xc7198437980c041c805a1edcba50c1ce5db95118

const MIM = 0x130966628846bfd36ff31a822705796e8cb8c18d


function _fallback() payable {
    revert
}

function swapExact(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    return 0
}

function swap(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3)
    call 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, this.address, this.address, 0, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x80277a98bd53aa835ec4cb7aedf04ac8fbac5e3c)
    call 0x80277a98bd53aa835ec4cb7aedf04ac8fbac5e3c.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xbde1c85c9faa18bc6e8eda1e2d813e63f86fd145)
    call 0xbde1c85c9faa18bc6e8eda1e2d813e63f86fd145.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x78bf833aae77ebf62c21a9a5a6993a691810f2e1)
    call 0x78bf833aae77ebf62c21a9a5a6993a691810f2e1.0xa9059cbb with:
         gas gas_remaining wei
        args 0x453b5415fe883f15686a5ff2ac6ff35ca6702628, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x453b5415fe883f15686a5ff2ac6ff35ca6702628)
    staticcall 0x453b5415fe883f15686a5ff2ac6ff35ca6702628.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if 997 * ext_call.return_data[0] / 997 != ext_call.return_data[0]:
        revert with 0, 'BoringMath: Mul Overflow'
    if not ext_call.return_data[18 len 14]:
        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
        if (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[50 len 14]) < 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Add Overflow'
        require (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[50 len 14])
        require ext_code.size(0x453b5415fe883f15686a5ff2ac6ff35ca6702628)
        call 0x453b5415fe883f15686a5ff2ac6ff35ca6702628.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, 0xeaae66c72513796363181e0d3954a15a0a64cc22, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xeaae66c72513796363181e0d3954a15a0a64cc22)
        staticcall 0xeaae66c72513796363181e0d3954a15a0a64cc22.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if 997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 997 != 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 'BoringMath: Mul Overflow'
        if not ext_call.return_data[50 len 14]:
            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                revert with 0, 'BoringMath: Mul Overflow'
            if (997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[18 len 14]) < 997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 'BoringMath: Add Overflow'
            require (997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[18 len 14])
            require ext_code.size(0xeaae66c72513796363181e0d3954a15a0a64cc22)
            call 0xeaae66c72513796363181e0d3954a15a0a64cc22.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0 / (997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[0])), this.address, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e)
            call 0x001e3ba199b4ff4b5b6e97acd96dafc0e2e4156e.0xa3220db8 with:
                 gas gas_remaining wei
                args 0xc5536d59d026be19b4267810f43ac083cd607b64, 3, 0, 0 / (997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, 0, 0, 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3
        else:
            require ext_call.return_data[50 len 14]
            if 997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 'BoringMath: Mul Overflow'
            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                revert with 0, 'BoringMath: Mul Overflow'
            if (997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[18 len 14]) < 997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 'BoringMath: Add Overflow'
            require (997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[18 len 14])
            require ext_code.size(0xeaae66c72513796363181e0d3954a15a0a64cc22)
            call 0xeaae66c72513796363181e0d3954a15a0a64cc22.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[0])), this.address, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e)
            call 0x001e3ba199b4ff4b5b6e97acd96dafc0e2e4156e.0xa3220db8 with:
                 gas gas_remaining wei
                args 0xc5536d59d026be19b4267810f43ac083cd607b64, 3, 0, 997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, 0, 0, 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3
    else:
        require ext_call.return_data[18 len 14]
        if 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Mul Overflow'
        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
        if (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[50 len 14]) < 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Add Overflow'
        require (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[50 len 14])
        require ext_code.size(0x453b5415fe883f15686a5ff2ac6ff35ca6702628)
        call 0x453b5415fe883f15686a5ff2ac6ff35ca6702628.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, 0xeaae66c72513796363181e0d3954a15a0a64cc22, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xeaae66c72513796363181e0d3954a15a0a64cc22)
        staticcall 0xeaae66c72513796363181e0d3954a15a0a64cc22.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 997 != 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 'BoringMath: Mul Overflow'
        if not ext_call.return_data[50 len 14]:
            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                revert with 0, 'BoringMath: Mul Overflow'
            if (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[18 len 14]) < 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 'BoringMath: Add Overflow'
            require (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[18 len 14])
            require ext_code.size(0xeaae66c72513796363181e0d3954a15a0a64cc22)
            call 0xeaae66c72513796363181e0d3954a15a0a64cc22.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0 / (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[0])), this.address, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e)
            call 0x001e3ba199b4ff4b5b6e97acd96dafc0e2e4156e.0xa3220db8 with:
                 gas gas_remaining wei
                args 0xc5536d59d026be19b4267810f43ac083cd607b64, 3, 0, 0 / (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, 0, 0, 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3
        else:
            require ext_call.return_data[50 len 14]
            if 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 'BoringMath: Mul Overflow'
            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                revert with 0, 'BoringMath: Mul Overflow'
            if (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[18 len 14]) < 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 'BoringMath: Add Overflow'
            require (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[18 len 14])
            require ext_code.size(0xeaae66c72513796363181e0d3954a15a0a64cc22)
            call 0xeaae66c72513796363181e0d3954a15a0a64cc22.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[0])), this.address, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e)
            call 0x001e3ba199b4ff4b5b6e97acd96dafc0e2e4156e.0xa3220db8 with:
                 gas gas_remaining wei
                args 0xc5536d59d026be19b4267810f43ac083cd607b64, 3, 0, 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, 0, 0, 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3)
    call 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args address(arg2), 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3, address(arg3), ext_call.return_data[0], 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] - arg4 > ext_call.return_data[32]:
        revert with 0, 'BoringMath: Underflow'
    return ext_call.return_data[32] - arg4, ext_call.return_data[32]
}



}
