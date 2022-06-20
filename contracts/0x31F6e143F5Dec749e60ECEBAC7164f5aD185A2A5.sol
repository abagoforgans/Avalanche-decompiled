contract main {




// =====================  Runtime code  =====================


const sub_c4f09877(?) = 0xc5536d59d026be19b4267810f43ac083cd607b64

const BentoBox = 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3

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
    require ext_code.size(0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3)
    call 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, this.address, 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256, 0, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
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
            args 0xc5536d59d026be19b4267810f43ac083cd607b64, 3, 0, 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, 0, 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3
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
            args 0xc5536d59d026be19b4267810f43ac083cd607b64, 3, 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, 0, 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3)
    call 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args address(arg2), 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3, address(arg3), ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] - arg4 > ext_call.return_data[32]:
        revert with 0, 'BoringMath: Underflow'
    return ext_call.return_data[32] - arg4, ext_call.return_data[32]
}



}
