contract main {




// =====================  Runtime code  =====================


const sub_65f6a6be(?) = 0xf72beacc6fd334e14a7ddac25c3ce1eb8a827e10

const USDC = 0xf096872672f44d6eba71458d74fe67f9a77a23b9

const USDT = 0xebe676ee90fe1112671f19b6b7459bc678b67e8a

const DAI = 0x51d7180eda2260cc4f6e4eebb82fef5c3c2b8300


function _fallback() payable {
    revert
}

function name(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return ''
}

function symbol(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return ''
}

function get(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x51d7180eda2260cc4f6e4eebb82fef5c3c2b8300)
    staticcall 0x51d7180eda2260cc4f6e4eebb82fef5c3c2b8300.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xf096872672f44d6eba71458d74fe67f9a77a23b9)
    staticcall 0xf096872672f44d6eba71458d74fe67f9a77a23b9.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xebe676ee90fe1112671f19b6b7459bc678b67e8a)
    staticcall 0xebe676ee90fe1112671f19b6b7459bc678b67e8a.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xf72beacc6fd334e14a7ddac25c3ce1eb8a827e10)
    staticcall 0xf72beacc6fd334e14a7ddac25c3ce1eb8a827e10.get_virtual_price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'BoringMath: Mul Overflow'
    require ext_call.return_data[0] * ext_call.return_data[0]
    return 1, 100000000000000000000000000 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]
}

function peek(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x51d7180eda2260cc4f6e4eebb82fef5c3c2b8300)
    staticcall 0x51d7180eda2260cc4f6e4eebb82fef5c3c2b8300.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xf096872672f44d6eba71458d74fe67f9a77a23b9)
    staticcall 0xf096872672f44d6eba71458d74fe67f9a77a23b9.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xebe676ee90fe1112671f19b6b7459bc678b67e8a)
    staticcall 0xebe676ee90fe1112671f19b6b7459bc678b67e8a.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xf72beacc6fd334e14a7ddac25c3ce1eb8a827e10)
    staticcall 0xf72beacc6fd334e14a7ddac25c3ce1eb8a827e10.get_virtual_price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'BoringMath: Mul Overflow'
    require ext_call.return_data[0] * ext_call.return_data[0]
    return 1, 100000000000000000000000000 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]
}

function peekSpot(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x51d7180eda2260cc4f6e4eebb82fef5c3c2b8300)
    staticcall 0x51d7180eda2260cc4f6e4eebb82fef5c3c2b8300.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xf096872672f44d6eba71458d74fe67f9a77a23b9)
    staticcall 0xf096872672f44d6eba71458d74fe67f9a77a23b9.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xebe676ee90fe1112671f19b6b7459bc678b67e8a)
    staticcall 0xebe676ee90fe1112671f19b6b7459bc678b67e8a.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xf72beacc6fd334e14a7ddac25c3ce1eb8a827e10)
    staticcall 0xf72beacc6fd334e14a7ddac25c3ce1eb8a827e10.get_virtual_price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'BoringMath: Mul Overflow'
    require ext_call.return_data[0] * ext_call.return_data[0]
    return (100000000000000000000000000 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0])
}



}
