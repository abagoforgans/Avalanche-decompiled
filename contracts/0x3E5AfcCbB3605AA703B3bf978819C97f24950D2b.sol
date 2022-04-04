contract main {




// =====================  Runtime code  =====================


const tokenA = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const tokenB = 0xc7198437980c041c805a1edcba50c1ce5db95118

const pair = 0xe28984e1ee8d431346d32bec9ec800efb643eef4


address owner;
uint256 fee;

function owner() payable {
    return owner
}

function fee() payable {
    return fee
}

function _fallback() payable {
    revert
}

function setFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 < 10
    fee = arg1
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not (997 * arg1) + (1000 * arg2):
        revert with 'NH{q', 18
    return (997 * arg1 * arg3 / (997 * arg1) + (1000 * arg2))
}

function getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not (997 * arg3) - (997 * arg1):
        revert with 'NH{q', 18
    return ((1000 * arg1 * arg2 / (997 * arg3) - (997 * arg1)) + 1)
}

function sub_2bdd2b73(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1 * fee / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 0xe28984e1ee8d431346d32bec9ec800efb643eef4, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_code.size(0xe28984e1ee8d431346d32bec9ec800efb643eef4)
    call 0xe28984e1ee8d431346d32bec9ec800efb643eef4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args 0, arg2, msg.sender, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f29d245a(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
    call 0xc7198437980c041c805a1edcba50c1ce5db95118.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 0xe28984e1ee8d431346d32bec9ec800efb643eef4, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
    call 0xc7198437980c041c805a1edcba50c1ce5db95118.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1 * fee / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_code.size(0xe28984e1ee8d431346d32bec9ec800efb643eef4)
    call 0xe28984e1ee8d431346d32bec9ec800efb643eef4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args arg2, 0, msg.sender, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_29e3897c(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
    call 0xc7198437980c041c805a1edcba50c1ce5db95118.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 0xe28984e1ee8d431346d32bec9ec800efb643eef4, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
    call 0xc7198437980c041c805a1edcba50c1ce5db95118.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1 * fee / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_code.size(0xe28984e1ee8d431346d32bec9ec800efb643eef4)
    call 0xe28984e1ee8d431346d32bec9ec800efb643eef4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args arg2, 0, msg.sender, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
}

function sub_55b9ca48(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1 * fee / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 0xe28984e1ee8d431346d32bec9ec800efb643eef4, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_code.size(0xe28984e1ee8d431346d32bec9ec800efb643eef4)
    call 0xe28984e1ee8d431346d32bec9ec800efb643eef4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args 0, arg2, msg.sender, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
}

function claim() payable {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
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
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
    staticcall 0xc7198437980c041c805a1edcba50c1ce5db95118.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
    call 0xc7198437980c041c805a1edcba50c1ce5db95118.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}



}
