contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function setFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require 0xa147851e89fc5a505ca1122bccd9f01058b4afb7 == msg.sender
    stor0 = arg1
}

function inCaseTokensGetStuck(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require 0xa147851e89fc5a505ca1122bccd9f01058b4afb7 == msg.sender
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function harvest() payable {
    require 0xa147851e89fc5a505ca1122bccd9f01058b4afb7 == msg.sender
    require ext_code.size(0xbe475d888854a5d94cc2c3fb09a79c70be8cc55c)
    staticcall 0xbe475d888854a5d94cc2c3fb09a79c70be8cc55c.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[50 len 14] and stor0 > -1 / ext_call.return_data[50 len 14]:
        revert with 'NH{q', 17
    require ext_code.size(0xc2a4d411ac8ada649b85c14671ebfb4aa4589772)
    call 0xc2a4d411ac8ada649b85c14671ebfb4aa4589772.0xa9059cbb with:
         gas gas_remaining wei
        args 0xbe475d888854a5d94cc2c3fb09a79c70be8cc55c, Mask(112, 0, ext_call.return_data[32]) * stor0 / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if Mask(112, 0, ext_call.return_data[32]) * stor0 / 10000 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 'NH{q', 17
    if 997 * Mask(112, 0, ext_call.return_data[32]) * stor0 / 10000 and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * Mask(112, 0, ext_call.return_data[32]) * stor0 / 10000:
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 'NH{q', 17
    if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(997 * Mask(112, 0, ext_call.return_data[32]) * stor0 / 10000):
        revert with 'NH{q', 17
    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, ext_call.return_data[32]) * stor0 / 10000):
        revert with 'NH{q', 18
    require ext_code.size(0xbe475d888854a5d94cc2c3fb09a79c70be8cc55c)
    call 0xbe475d888854a5d94cc2c3fb09a79c70be8cc55c.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 997 * Mask(112, 0, ext_call.return_data[32]) * stor0 / 10000 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, ext_call.return_data[32]) * stor0 / 10000), 0, 0xa147851e89fc5a505ca1122bccd9f01058b4afb7, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
