contract main {




// =====================  Runtime code  =====================


const wMEMO = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b

const sub_8a4d786b(?) = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664

const sub_c4f09877(?) = 0xc5536d59d026be19b4267810f43ac083cd607b64

const BentoBox = 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3

const sub_e17a1115(?) = 0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e

const POLE = 0x65069e550c5526c029dc9135edd02f6683859ac1

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
        args 0, 0, address(this.address), 0x4d308c46ea9f234ea515cc51f16fba776451cac8, 0, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x4d308c46ea9f234ea515cc51f16fba776451cac8)
    staticcall 0x4d308c46ea9f234ea515cc51f16fba776451cac8.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if 997 * ext_call.return_data[0] / 997 != ext_call.return_data[0]:
        revert with 0, 'BoringMath: Mul Overflow'
    if not ext_call.return_data[50 len 14]:
        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
        if (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Add Overflow'
        require (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
        require ext_code.size(0x4d308c46ea9f234ea515cc51f16fba776451cac8)
        call 0x4d308c46ea9f234ea515cc51f16fba776451cac8.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0x50141c21e4e861d4b2cbeb825b9a2b5e5e09a186, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x4d308c46ea9f234ea515cc51f16fba776451cac8)
        staticcall 0x4d308c46ea9f234ea515cc51f16fba776451cac8.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 997 != 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
            revert with 0, 'BoringMath: Mul Overflow'
        if not ext_call.return_data[50 len 14]:
            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                revert with 0, 'BoringMath: Mul Overflow'
            if (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])) < 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                revert with 0, 'BoringMath: Add Overflow'
            require (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
            require ext_code.size(0x50141c21e4e861d4b2cbeb825b9a2b5e5e09a186)
            call 0x50141c21e4e861d4b2cbeb825b9a2b5e5e09a186.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), address(this.address), 128, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e)
            call 0x001e3ba199b4ff4b5b6e97acd96dafc0e2e4156e.0xa3220db8 with:
                 gas gas_remaining wei
                args 0xc5536d59d026be19b4267810f43ac083cd607b64, 2, 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), 0, 0, 0, 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3
        else:
            require ext_call.return_data[50 len 14]
            if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                revert with 0, 'BoringMath: Mul Overflow'
            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                revert with 0, 'BoringMath: Mul Overflow'
            if (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])) < 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                revert with 0, 'BoringMath: Add Overflow'
            require (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
            require ext_code.size(0x50141c21e4e861d4b2cbeb825b9a2b5e5e09a186)
            call 0x50141c21e4e861d4b2cbeb825b9a2b5e5e09a186.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), address(this.address), 128, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e)
            call 0x001e3ba199b4ff4b5b6e97acd96dafc0e2e4156e.0xa3220db8 with:
                 gas gas_remaining wei
                args 0xc5536d59d026be19b4267810f43ac083cd607b64, 2, 0, 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), 0, 0, 0, 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3
    else:
        require ext_call.return_data[50 len 14]
        if 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Mul Overflow'
        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
        if (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Add Overflow'
        require (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
        require ext_code.size(0x4d308c46ea9f234ea515cc51f16fba776451cac8)
        call 0x4d308c46ea9f234ea515cc51f16fba776451cac8.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0x50141c21e4e861d4b2cbeb825b9a2b5e5e09a186, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x4d308c46ea9f234ea515cc51f16fba776451cac8)
        staticcall 0x4d308c46ea9f234ea515cc51f16fba776451cac8.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 997 != 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
            revert with 0, 'BoringMath: Mul Overflow'
        if not ext_call.return_data[50 len 14]:
            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                revert with 0, 'BoringMath: Mul Overflow'
            if (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])) < 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                revert with 0, 'BoringMath: Add Overflow'
            require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
            require ext_code.size(0x50141c21e4e861d4b2cbeb825b9a2b5e5e09a186)
            call 0x50141c21e4e861d4b2cbeb825b9a2b5e5e09a186.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), address(this.address), 128, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e)
            call 0x001e3ba199b4ff4b5b6e97acd96dafc0e2e4156e.0xa3220db8 with:
                 gas gas_remaining wei
                args 0xc5536d59d026be19b4267810f43ac083cd607b64, 2, 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), 0, 0, 0, 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3
        else:
            require ext_call.return_data[50 len 14]
            if 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                revert with 0, 'BoringMath: Mul Overflow'
            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                revert with 0, 'BoringMath: Mul Overflow'
            if (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])) < 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                revert with 0, 'BoringMath: Add Overflow'
            require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
            require ext_code.size(0x50141c21e4e861d4b2cbeb825b9a2b5e5e09a186)
            call 0x50141c21e4e861d4b2cbeb825b9a2b5e5e09a186.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), address(this.address), 128, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e)
            call 0x001e3ba199b4ff4b5b6e97acd96dafc0e2e4156e.0xa3220db8 with:
                 gas gas_remaining wei
                args 0xc5536d59d026be19b4267810f43ac083cd607b64, 2, 0, 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), 0, 0, 0, 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3
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
