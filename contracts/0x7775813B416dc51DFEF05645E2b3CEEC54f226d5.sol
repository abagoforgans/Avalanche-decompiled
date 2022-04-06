contract main {




// =====================  Runtime code  =====================


const sub_1dc09aac(?) = 0x399e0348bdab853576df586027ddeb1cb25fae2c

const chef = 0x52b8bb74cde6602ab9e6540e25e0a97f5b3226d7

const dummy = 0x39e405c3af0a009c9a8d15cf9c350a40a351e47c

const sub_94dbc383(?) = 0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0

const pid = 66


function _fallback() payable {
    revert
}

function deposit() payable {
    require ext_code.size(0x39e405c3af0a009c9a8d15cf9c350a40a351e47c)
    call 0x39e405c3af0a009c9a8d15cf9c350a40a351e47c.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0x52b8bb74cde6602ab9e6540e25e0a97f5b3226d7, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x52b8bb74cde6602ab9e6540e25e0a97f5b3226d7)
    call 0x52b8bb74cde6602ab9e6540e25e0a97f5b3226d7.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 66, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function harvest() payable {
    require ext_code.size(0x52b8bb74cde6602ab9e6540e25e0a97f5b3226d7)
    call 0x52b8bb74cde6602ab9e6540e25e0a97f5b3226d7.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 66, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0)
    staticcall 0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0)
    call 0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0.0xa9059cbb with:
         gas gas_remaining wei
        args 0x399e0348bdab853576df586027ddeb1cb25fae2c, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
