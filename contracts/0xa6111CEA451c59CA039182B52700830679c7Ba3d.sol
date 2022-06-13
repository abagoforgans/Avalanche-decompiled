contract main {




// =====================  Runtime code  =====================


const sub_c4f09877(?) = 0x3d49594ed8c108f817512829c102e4059c76a220

const BentoBox = 0x6c2080fd12bf4f3973abcaecf42f057c1c57184d

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const POLE = 0x432e264ad545da68e116d71572baccd943802aa9


function _fallback() payable {
    revert
}

function swap(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0x6c2080fd12bf4f3973abcaecf42f057c1c57184d)
    call 0x6c2080fd12bf4f3973abcaecf42f057c1c57184d.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 1132473001, this.address, this.address, 0, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x3d49594ed8c108f817512829c102e4059c76a220)
    call 0x3d49594ed8c108f817512829c102e4059c76a220.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4, address arg5) with:
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
    if 997 * ext_call.return_data[0] / 997 != ext_call.return_data[0]:
        revert with 0, 'BoringMath: Mul Overflow'
    if not ext_call.return_data[18 len 14]:
        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
        if (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[50 len 14]) < 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Add Overflow'
        require (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[50 len 14])
        require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
        call 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6c2080fd12bf4f3973abcaecf42f057c1c57184d, 128, 0
    else:
        require ext_call.return_data[18 len 14]
        if 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Mul Overflow'
        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
        if (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[50 len 14]) < 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Add Overflow'
        require (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[50 len 14])
        require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
        call 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6c2080fd12bf4f3973abcaecf42f057c1c57184d, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}



}
