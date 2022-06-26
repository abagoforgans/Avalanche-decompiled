contract main {




// =====================  Runtime code  =====================


const sub_c4f09877(?) = 0x3d49594ed8c108f817512829c102e4059c76a220

const BentoBox = 0x6c2080fd12bf4f3973abcaecf42f057c1c57184d

const sub_e17a1115(?) = 0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e

const WBTC = 0x50b7545627a5162f82a992c33b87adc75187b218

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const POLE = 0x432e264ad545da68e116d71572baccd943802aa9

const USDT = 0xc7198437980c041c805a1edcba50c1ce5db95118


function _fallback() payable {
    revert
}

function swap(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0x6c2080fd12bf4f3973abcaecf42f057c1c57184d)
    call 0x6c2080fd12bf4f3973abcaecf42f057c1c57184d.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 1132473001, address(this.address), address(this.address), 0, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e)
    call 0x001e3ba199b4ff4b5b6e97acd96dafc0e2e4156e.0xa3220db8 with:
         gas gas_remaining wei
        args 0, ext_call.return_data[32], 0, 3, ext_call.return_data[0], 0, 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256
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
    if not ext_call.return_data[18 len 14]:
        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
        if (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Add Overflow'
        require (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
        require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
        call 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, 0xd5a37dc5c9a396a03dd1136fc76a1a02b1c88ffa, 128, 0
    else:
        require ext_call.return_data[18 len 14]
        if 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Mul Overflow'
        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
        if (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Add Overflow'
        require (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
        require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
        call 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, 0xd5a37dc5c9a396a03dd1136fc76a1a02b1c88ffa, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}



}
