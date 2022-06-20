contract main {




// =====================  Runtime code  =====================


const gOHM = 0x321e7092a180bb43555132ec53aaa65a5bf84251

const sub_c4f09877(?) = 0xc5536d59d026be19b4267810f43ac083cd607b64

const BentoBox = 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const POLE = 0x432e264ad545da68e116d71572baccd943802aa9


function _fallback() payable {
    revert
}

function swap(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3)
    call 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 1132473001, address(this.address), address(this.address), 0, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0xc5536d59d026be19b4267810f43ac083cd607b64)
    call 0xc5536d59d026be19b4267810f43ac083cd607b64.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4, address arg5) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[32], 3, ext_call.return_data[0], 0, 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
    staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[18 len 14]:
        require ext_call.return_data[18 len 14]
        if 0 / ext_call.return_data[18 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
        revert with 0, 'BoringMath: Mul Overflow'
    if 1000 * ext_call.return_data[50 len 14] < 0:
        revert with 0, 'BoringMath: Add Overflow'
    require 1000 * ext_call.return_data[50 len 14]
    require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
    call 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, 0xb674f93952f02f2538214d4572aa47f262e990ff, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb674f93952f02f2538214d4572aa47f262e990ff)
    staticcall 0xb674f93952f02f2538214d4572aa47f262e990ff.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if 997 * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / 997 != 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'BoringMath: Mul Overflow'
    if not ext_call.return_data[18 len 14]:
        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
        if (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / 1000 * Mask(112, 0, ext_call.return_data[32])) < 997 * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'BoringMath: Add Overflow'
        require (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]))
        require ext_code.size(0xb674f93952f02f2538214d4572aa47f262e990ff)
        call 0xb674f93952f02f2538214d4572aa47f262e990ff.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / 1000 * Mask(112, 0, ext_call.return_data[32])), 0, 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3, 128, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3)
        call 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3, address(arg1), 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / 1000 * Mask(112, 0, ext_call.return_data[32])), 0, 0
    else:
        require ext_call.return_data[18 len 14]
        if 997 * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'BoringMath: Mul Overflow'
        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
        if (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / 1000 * Mask(112, 0, ext_call.return_data[32])) < 997 * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'BoringMath: Add Overflow'
        require (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]))
        require ext_code.size(0xb674f93952f02f2538214d4572aa47f262e990ff)
        call 0xb674f93952f02f2538214d4572aa47f262e990ff.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 997 * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / 1000 * Mask(112, 0, ext_call.return_data[32])), 0, 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3, 128, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3)
        call 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0xbbe7bf1c422efbb5b2cb7a91a6f0aa7cde86c1d3, address(arg1), 997 * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / 1000 * Mask(112, 0, ext_call.return_data[32])), 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] - arg2 > ext_call.return_data[32]:
        revert with 0, 'BoringMath: Underflow'
    return ext_call.return_data[32] - arg2, ext_call.return_data[32]
}



}
