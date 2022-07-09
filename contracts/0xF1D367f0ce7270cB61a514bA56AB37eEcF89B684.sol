contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_df9aee68(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    if ('cd', 100)[0]:
        require ('cd', 100).length >= 160
        require ('cd', 100)[0] == ('cd', 100)[0]
        require ('cd', 100)[1] == ('cd', 100)[1]
        require ('cd', 100)[2] == ('cd', 100)[2]
        require ('cd', 100)[3] == ('cd', 100)[3]
        require ('cd', 100)[4] == ('cd', 100)[4]
        require ext_code.size(0x63468133ed352e602beb61dd254d6060ad2fe419)
        call 0x63468133ed352e602beb61dd254d6060ad2fe419.deposit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x63468133ed352e602beb61dd254d6060ad2fe419)
        call 0x63468133ed352e602beb61dd254d6060ad2fe419.0xa9059cbb with:
             gas gas_remaining wei
            args 0x9800f12caed083d3d755e402335fafd592f6759c, ('cd', 100)[1]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0x9800f12caed083d3d755e402335fafd592f6759c)
        call 0x9800f12caed083d3d755e402335fafd592f6759c.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, ('cd', 100)[2], 0xa4247d98a0c7e2d8cf91b451fe354d33a3d4125b, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xa4247d98a0c7e2d8cf91b451fe354d33a3d4125b)
        call 0xa4247d98a0c7e2d8cf91b451fe354d33a3d4125b.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, ('cd', 100)[3], address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xa9059cbb with:
             gas gas_remaining wei
            args 0xf46a477de5132f9858c542273860d61ed5253811, ('cd', 100)[4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ('cd', 100)[3] < ('cd', 100)[4]:
            revert with 'NH{q', 17
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xa9059cbb with:
             gas gas_remaining wei
            args 0x736954f536de2e7edd97c9789c7a62d62338aa38, ('cd', 100)[3] - ('cd', 100)[4]
    else:
        require ('cd', 100).length >= 192
        require ('cd', 100)[0] == ('cd', 100)[0]
        require ('cd', 100)[1] == ('cd', 100)[1]
        require ('cd', 100)[2] == ('cd', 100)[2]
        require ('cd', 100)[3] == ('cd', 100)[3]
        require ('cd', 100)[4] == ('cd', 100)[4]
        require ('cd', 100)[5] == ('cd', 100)[5]
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xa9059cbb with:
             gas gas_remaining wei
            args 0xf46a477de5132f9858c542273860d61ed5253811, ('cd', 100)[1]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xa9059cbb with:
             gas gas_remaining wei
            args 0xa4247d98a0c7e2d8cf91b451fe354d33a3d4125b, ('cd', 100)[2]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0xa4247d98a0c7e2d8cf91b451fe354d33a3d4125b)
        call 0xa4247d98a0c7e2d8cf91b451fe354d33a3d4125b.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args ('cd', 100)[3], 0, 0x9800f12caed083d3d755e402335fafd592f6759c, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x9800f12caed083d3d755e402335fafd592f6759c)
        call 0x9800f12caed083d3d755e402335fafd592f6759c.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args ('cd', 100)[4], 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x63468133ed352e602beb61dd254d6060ad2fe419)
        call 0x63468133ed352e602beb61dd254d6060ad2fe419.0x2e1a7d4d with:
             gas gas_remaining wei
            args ('cd', 100)[4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xae4aa155d2987b454c29450ef4f862cf00907b61)
        call 0xae4aa155d2987b454c29450ef4f862cf00907b61.0xa9059cbb with:
             gas gas_remaining wei
            args 0x736954f536de2e7edd97c9789c7a62d62338aa38, ('cd', 100)[5]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require 0xf46a477de5132f9858c542273860d61ed5253811 == msg.sender
    require ext_code.size(0x63468133ed352e602beb61dd254d6060ad2fe419)
    staticcall 0x63468133ed352e602beb61dd254d6060ad2fe419.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x63468133ed352e602beb61dd254d6060ad2fe419)
    staticcall 0x63468133ed352e602beb61dd254d6060ad2fe419.0xeb9e1ef7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 xor tx.origin and ext_call.return_data[0] > -1 / arg1 xor tx.origin:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(0x9800f12caed083d3d755e402335fafd592f6759c)
    staticcall 0x9800f12caed083d3d755e402335fafd592f6759c.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
        revert with 0, 'ThorusLibrary: INSUFFICIENT_INPUT_AMOUNT'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'ThorusLibrary: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'ThorusLibrary: INSUFFICIENT_LIQUIDITY'
    if arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0] > 0x419a02900419a02900419a02900419a02900419a02900419a02900419a0290:
        revert with 'NH{q', 17
    if 999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / 999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 'NH{q', 17
    if 1000 * ext_call.return_data[18 len 14] > !(999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0]):
        revert with 'NH{q', 17
    if not (1000 * ext_call.return_data[18 len 14]) + (999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0]):
        revert with 'NH{q', 18
    require ext_code.size(0xa4247d98a0c7e2d8cf91b451fe354d33a3d4125b)
    staticcall 0xa4247d98a0c7e2d8cf91b451fe354d33a3d4125b.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0]) <= 0:
        revert with 0, 'ThorusLibrary: INSUFFICIENT_INPUT_AMOUNT'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'ThorusLibrary: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'ThorusLibrary: INSUFFICIENT_LIQUIDITY'
    if 999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0]) > 0x419a02900419a02900419a02900419a02900419a02900419a02900419a0290:
        revert with 'NH{q', 17
    if 999 * 999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / 999 * 999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0]):
        revert with 'NH{q', 17
    if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 'NH{q', 17
    if 1000 * ext_call.return_data[18 len 14] > !(999 * 999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0])):
        revert with 'NH{q', 17
    if not (1000 * ext_call.return_data[18 len 14]) + (999 * 999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0])):
        revert with 'NH{q', 18
    require ext_code.size(0x736954f536de2e7edd97c9789c7a62d62338aa38)
    staticcall 0x736954f536de2e7edd97c9789c7a62d62338aa38.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg1 xor tx.origin <= 0:
        revert with 0, 'ThorusLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'ThorusLibrary: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'ThorusLibrary: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[18 len 14] and arg1 xor tx.origin > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if ext_call.return_data[18 len 14] * arg1 xor tx.origin > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 'NH{q', 17
    if ext_call.return_data[50 len 14] < arg1 xor tx.origin:
        revert with 'NH{q', 17
    if ext_call.return_data[50 len 14] - (arg1 xor tx.origin) > 0x419a02900419a02900419a02900419a02900419a02900419a02900419a0290:
        revert with 'NH{q', 17
    if not (999 * ext_call.return_data[50 len 14]) - (999 * arg1 xor tx.origin):
        revert with 'NH{q', 18
    if 1 > !(1000 * ext_call.return_data[18 len 14] * arg1 xor tx.origin / (999 * ext_call.return_data[50 len 14]) - (999 * arg1 xor tx.origin)):
        revert with 'NH{q', 17
    if 999 * 999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (999 * 999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0])) < (1000 * ext_call.return_data[18 len 14] * arg1 xor tx.origin / (999 * ext_call.return_data[50 len 14]) - (999 * arg1 xor tx.origin)) + 1:
        revert with 'NH{q', 17
    require (999 * 999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (999 * 999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0]))) + -(1000 * ext_call.return_data[18 len 14] * arg1 xor tx.origin / (999 * ext_call.return_data[50 len 14]) - (999 * arg1 xor tx.origin)) - 1 > 10^6
    require ext_code.size(0x736954f536de2e7edd97c9789c7a62d62338aa38)
    call 0x736954f536de2e7edd97c9789c7a62d62338aa38.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, arg1 xor tx.origin, address(this.address), 128, 160, 1, arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0], 999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0]), 999 * 999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (999 * 999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0])), (999 * 999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (999 * 999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (999 * arg1 xor tx.origin * ext_call.return_data[0] / ext_call.return_data[0]))) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 xor tx.origin / (999 * Mask(112, 0, ext_call.return_data[32])) - (999 * arg1 xor tx.origin)) - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require 0xf46a477de5132f9858c542273860d61ed5253811 == msg.sender
    require ext_code.size(0xa4247d98a0c7e2d8cf91b451fe354d33a3d4125b)
    staticcall 0xa4247d98a0c7e2d8cf91b451fe354d33a3d4125b.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg1 xor tx.origin <= 0:
        revert with 0, 'ThorusLibrary: INSUFFICIENT_INPUT_AMOUNT'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'ThorusLibrary: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'ThorusLibrary: INSUFFICIENT_LIQUIDITY'
    if arg1 xor tx.origin > 0x419a02900419a02900419a02900419a02900419a02900419a02900419a0290:
        revert with 'NH{q', 17
    if 999 * arg1 xor tx.origin and ext_call.return_data[18 len 14] > -1 / 999 * arg1 xor tx.origin:
        revert with 'NH{q', 17
    if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 'NH{q', 17
    if 1000 * ext_call.return_data[50 len 14] > !(999 * arg1 xor tx.origin):
        revert with 'NH{q', 17
    if not (1000 * ext_call.return_data[50 len 14]) + (999 * arg1 xor tx.origin):
        revert with 'NH{q', 18
    require ext_code.size(0x9800f12caed083d3d755e402335fafd592f6759c)
    staticcall 0x9800f12caed083d3d755e402335fafd592f6759c.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) <= 0:
        revert with 0, 'ThorusLibrary: INSUFFICIENT_INPUT_AMOUNT'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'ThorusLibrary: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'ThorusLibrary: INSUFFICIENT_LIQUIDITY'
    if 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) > 0x419a02900419a02900419a02900419a02900419a02900419a02900419a0290:
        revert with 'NH{q', 17
    if 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) and ext_call.return_data[18 len 14] > -1 / 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin):
        revert with 'NH{q', 17
    if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 'NH{q', 17
    if 1000 * ext_call.return_data[50 len 14] > !(999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)):
        revert with 'NH{q', 17
    if not (1000 * ext_call.return_data[50 len 14]) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)):
        revert with 'NH{q', 18
    require ext_code.size(0x63468133ed352e602beb61dd254d6060ad2fe419)
    staticcall 0x63468133ed352e602beb61dd254d6060ad2fe419.withdrawFee() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x63468133ed352e602beb61dd254d6060ad2fe419)
    staticcall 0x63468133ed352e602beb61dd254d6060ad2fe419.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x63468133ed352e602beb61dd254d6060ad2fe419)
    staticcall 0x63468133ed352e602beb61dd254d6060ad2fe419.0xeb9e1ef7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) and ext_call.return_data[0] > -1 / 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)):
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] and 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] < ext_call.return_data[0] * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] / 10000:
        revert with 'NH{q', 17
    require ext_code.size(0x736954f536de2e7edd97c9789c7a62d62338aa38)
    staticcall 0x736954f536de2e7edd97c9789c7a62d62338aa38.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0]) - (ext_call.return_data[0] * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] / 10000) <= 0:
        revert with 0, 'ThorusLibrary: INSUFFICIENT_INPUT_AMOUNT'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'ThorusLibrary: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'ThorusLibrary: INSUFFICIENT_LIQUIDITY'
    if (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0]) - (ext_call.return_data[0] * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] / 10000) > 0x419a02900419a02900419a02900419a02900419a02900419a02900419a0290:
        revert with 'NH{q', 17
    if (999 * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0]) - (999 * ext_call.return_data[0] * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] / 10000) and ext_call.return_data[18 len 14] > -1 / (999 * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0]) - (999 * ext_call.return_data[0] * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] / 10000):
        revert with 'NH{q', 17
    if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 'NH{q', 17
    if 1000 * ext_call.return_data[50 len 14] > !((999 * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0]) - (999 * ext_call.return_data[0] * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] / 10000)):
        revert with 'NH{q', 17
    if not (1000 * ext_call.return_data[50 len 14]) + (999 * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0]) - (999 * ext_call.return_data[0] * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] / 10000):
        revert with 'NH{q', 18
    if (999 * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (999 * ext_call.return_data[0] * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] / 10000 * ext_call.return_data[18 len 14]) / (1000 * ext_call.return_data[50 len 14]) + (999 * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0]) - (999 * ext_call.return_data[0] * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] / 10000) < arg1 xor tx.origin:
        revert with 'NH{q', 17
    require ((999 * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (999 * ext_call.return_data[0] * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] / 10000 * ext_call.return_data[18 len 14]) / (1000 * ext_call.return_data[50 len 14]) + (999 * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0]) - (999 * ext_call.return_data[0] * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] / 10000)) - (arg1 xor tx.origin) > 10^6
    if ((999 * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (999 * ext_call.return_data[0] * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] / 10000 * ext_call.return_data[18 len 14]) / (1000 * ext_call.return_data[50 len 14]) + (999 * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0]) - (999 * ext_call.return_data[0] * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] / 10000)) - (arg1 xor tx.origin) > !(arg1 xor tx.origin):
        revert with 'NH{q', 17
    require ext_code.size(0x736954f536de2e7edd97c9789c7a62d62338aa38)
    call 0x736954f536de2e7edd97c9789c7a62d62338aa38.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args (999 * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (999 * ext_call.return_data[0] * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] / 10000 * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0]) - (999 * ext_call.return_data[0] * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] / 10000), 0, address(this.address), 128, 192, 0, ((999 * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (999 * ext_call.return_data[0] * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] / 10000 * ext_call.return_data[18 len 14]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0]) - (999 * ext_call.return_data[0] * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] / 10000)) - (arg1 xor tx.origin), arg1 xor tx.origin, 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin), 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)), (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0]) - (ext_call.return_data[0] * 999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * 999 * arg1 xor tx.origin * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (999 * arg1 xor tx.origin)) * ext_call.return_data[0] / ext_call.return_data[0] / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
