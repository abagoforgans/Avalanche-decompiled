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
    return 0
}



}
