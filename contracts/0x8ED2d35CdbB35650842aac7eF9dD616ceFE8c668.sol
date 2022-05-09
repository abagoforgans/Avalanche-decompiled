contract main {




// =====================  Runtime code  =====================


const name = 'wrapped ', 0

const decimals = 18

const symbol = '', 0


mapping of uint256 balanceOf;
mapping of uint256 stor1;
uint256 totalSupply;
uint256 sub_d3fc4070;
uint256 sub_bea4ce96;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_bea4ce96(?) payable {
    return sub_bea4ce96
}

function sub_d3fc4070(?) payable {
    return sub_d3fc4070
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    stor1[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor1[address(arg1)][msg.sender] != -1:
        if stor1[address(arg1)][msg.sender] < arg3:
            revert with 0, 17
        stor1[address(arg1)][msg.sender] -= arg3
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    staticcall 0xece4d1b3c2020a312ec41a7271608326894076b4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 > !ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] + 1 and 10^18 > -1 / ext_call.return_data[0] + 1:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    sub_bea4ce96 = (10^18 * ext_call.return_data[0]) + 10^18 / totalSupply
    staticcall 0xece4d1b3c2020a312ec41a7271608326894076b4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 > !ext_call.return_data[0]:
        revert with 0, 17
    if totalSupply and 10^18 > -1 / totalSupply:
        revert with 0, 17
    if not ext_call.return_data[0] + 1:
        revert with 0, 18
    sub_d3fc4070 = 10^18 * totalSupply / ext_call.return_data[0] + 1
    if sub_bea4ce96 and arg1 > -1 / sub_bea4ce96:
        revert with 0, 17
    call 0xece4d1b3c2020a312ec41a7271608326894076b4.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_bea4ce96 * arg1 / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    totalSupply -= arg1
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    staticcall 0xece4d1b3c2020a312ec41a7271608326894076b4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 > !ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] + 1 and 10^18 > -1 / ext_call.return_data[0] + 1:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    sub_bea4ce96 = (10^18 * ext_call.return_data[0]) + 10^18 / totalSupply
    staticcall 0xece4d1b3c2020a312ec41a7271608326894076b4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 > !ext_call.return_data[0]:
        revert with 0, 17
    if totalSupply and 10^18 > -1 / totalSupply:
        revert with 0, 17
    if not ext_call.return_data[0] + 1:
        revert with 0, 18
    sub_d3fc4070 = 10^18 * totalSupply / ext_call.return_data[0] + 1
    if sub_d3fc4070 and arg1 > -1 / sub_d3fc4070:
        revert with 0, 17
    call 0xece4d1b3c2020a312ec41a7271608326894076b4.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalSupply > !(sub_d3fc4070 * arg1 / 10^18):
        revert with 0, 17
    totalSupply += sub_d3fc4070 * arg1 / 10^18
    balanceOf[address(msg.sender)] += sub_d3fc4070 * arg1 / 10^18
    emit Transfer((sub_d3fc4070 * arg1 / 10^18), 0, msg.sender);
    return 1
}



}
