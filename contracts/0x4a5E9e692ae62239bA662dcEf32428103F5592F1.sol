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
    emit Log(ext_call.return_data[0]);
    return 0
}



}
