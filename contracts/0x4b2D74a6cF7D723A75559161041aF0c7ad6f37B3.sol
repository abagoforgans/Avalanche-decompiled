contract main {




// =====================  Runtime code  =====================


#
#  - sub_4c80f753(?)
#  - sub_605c2906(?)
#  - sub_676f68c5(?)
#  - sub_b39e8889(?)
#  - sub_c26b7719(?)
#
address owner;
uint32 stor3;
address stor3; offset 32
address stor4;
address stor6;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_73157e5e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_9e3c651e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    return ext_call.return_data[32]
}

function sub_353528fe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor4)
    staticcall stor4.getReserveData(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[315 len 5]
    return ext_call.return_data[64]
}

function sub_8ba3a12e(?) payable {
    require ext_code.size(address(stor3.field_32))
    staticcall address(stor3.field_32).getReserveData(address arg1) with:
            gas gas_remaining wei
           args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    if not bool(ceil32(return_data.size) + 480 <= test266151307()):
        revert with 'NH{q', 65
    require return_data.size >= 32
    if not bool(ceil32(return_data.size) + 512 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    mem[ceil32(return_data.size) + 512] = ext_call.return_data[112 len 16]
    mem[ceil32(return_data.size) + 544] = ext_call.return_data[144 len 16]
    return memory
      from ceil32(return_data.size) + 512
       len 64
}

function sub_0be97748(?) payable {
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x46a51127c3ce23fb7ab1de06226147f446e4a857
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857)
    staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0])
}

function sub_e59d82e3(?) payable {
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x532e6537fea298397212f09a61e03311686f548e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xc7198437980c041c805a1edcba50c1ce5db95118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x532e6537fea298397212f09a61e03311686f548e)
    staticcall 0x532e6537fea298397212f09a61e03311686f548e.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0])
}

function sub_1884d92d(?) payable {
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a)
    staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0])
}

function sub_893b4b28(?) payable {
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0xfc1ada7a288d6fce0d29ccfaaa57bc9114bb2dbe
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xc7198437980c041c805a1edcba50c1ce5db95118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor4)
    staticcall stor4.getReserveData(address arg1) with:
            gas gas_remaining wei
           args 0xc7198437980c041c805a1edcba50c1ce5db95118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[315 len 5]
    if ext_call.return_data[64] and ext_call.return_data[0] > -1 / ext_call.return_data[64]:
        revert with 'NH{q', 17
    if 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[64] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0])
}

function sub_95691cdb(?) payable {
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x848c080d2700cbe1b894a3374ad5e887e5ccb89c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor4)
    staticcall stor4.getReserveData(address arg1) with:
            gas gas_remaining wei
           args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[315 len 5]
    if ext_call.return_data[64] and ext_call.return_data[0] > -1 / ext_call.return_data[64]:
        revert with 'NH{q', 17
    if 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[64] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0])
}

function sub_3f719d31(?) payable {
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x1852dc24d1a8956a0b356aa18ede954c7a0ca5ae
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor4)
    staticcall stor4.getReserveData(address arg1) with:
            gas gas_remaining wei
           args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[315 len 5]
    if ext_call.return_data[64] and ext_call.return_data[0] > -1 / ext_call.return_data[64]:
        revert with 'NH{q', 17
    if 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[64] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0])
}

function sub_304cebc6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857)
    staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x46a51127c3ce23fb7ab1de06226147f446e4a857
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857)
    staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0 and arg1 > 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0 and arg1 < 0 and arg1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and arg1 > 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / arg1:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and arg1 < 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] == -1:
        revert with 'NH{q', 17
    return (-1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0])
}

function sub_c0fd7f8f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x532e6537fea298397212f09a61e03311686f548e)
    staticcall 0x532e6537fea298397212f09a61e03311686f548e.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x532e6537fea298397212f09a61e03311686f548e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xc7198437980c041c805a1edcba50c1ce5db95118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x532e6537fea298397212f09a61e03311686f548e)
    staticcall 0x532e6537fea298397212f09a61e03311686f548e.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0 and arg1 > 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0 and arg1 < 0 and arg1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and arg1 > 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / arg1:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and arg1 < 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] == -1:
        revert with 'NH{q', 17
    return (-1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0])
}

function sub_956f5d75(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a)
    staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a)
    staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0 and arg1 > 0 and 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1:
        revert with 'NH{q', 17
    if 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0 and arg1 < 0 and arg1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and arg1 > 0 and 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / arg1:
        revert with 'NH{q', 17
    if 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and arg1 < 0 and 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1:
        revert with 'NH{q', 17
    if 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if -1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] == -1:
        revert with 'NH{q', 17
    return (-1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0])
}

function sub_6e4b8739(?) payable {
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0xfc1ada7a288d6fce0d29ccfaaa57bc9114bb2dbe
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xc7198437980c041c805a1edcba50c1ce5db95118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor4)
    staticcall stor4.getReserveData(address arg1) with:
            gas gas_remaining wei
           args 0xc7198437980c041c805a1edcba50c1ce5db95118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[315 len 5]
    if ext_call.return_data[64] and ext_call.return_data[0] > -1 / ext_call.return_data[64]:
        revert with 'NH{q', 17
    if 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[64] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x532e6537fea298397212f09a61e03311686f548e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xc7198437980c041c805a1edcba50c1ce5db95118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x532e6537fea298397212f09a61e03311686f548e)
    staticcall 0x532e6537fea298397212f09a61e03311686f548e.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] >= 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0] > -(100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0] < -(100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    return ((100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0]))
}

function sub_b48fa969(?) payable {
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x848c080d2700cbe1b894a3374ad5e887e5ccb89c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor4)
    staticcall stor4.getReserveData(address arg1) with:
            gas gas_remaining wei
           args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[315 len 5]
    if ext_call.return_data[64] and ext_call.return_data[0] > -1 / ext_call.return_data[64]:
        revert with 'NH{q', 17
    if 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[64] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x46a51127c3ce23fb7ab1de06226147f446e4a857
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857)
    staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] >= 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0] > -(100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0] < -(100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    return ((100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0]))
}

function sub_358b4e71(?) payable {
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x1852dc24d1a8956a0b356aa18ede954c7a0ca5ae
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor4)
    staticcall stor4.getReserveData(address arg1) with:
            gas gas_remaining wei
           args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[315 len 5]
    if ext_call.return_data[64] and ext_call.return_data[0] > -1 / ext_call.return_data[64]:
        revert with 'NH{q', 17
    if 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[64] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a)
    staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] >= 0 and 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0] > -(100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0] < -(100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    return ((100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0]))
}

function sub_3b4b40c3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0xfc1ada7a288d6fce0d29ccfaaa57bc9114bb2dbe
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xc7198437980c041c805a1edcba50c1ce5db95118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor4)
    staticcall stor4.getReserveData(address arg1) with:
            gas gas_remaining wei
           args 0xc7198437980c041c805a1edcba50c1ce5db95118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[315 len 5]
    if ext_call.return_data[64] and ext_call.return_data[0] > -1 / ext_call.return_data[64]:
        revert with 'NH{q', 17
    if 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[64] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x532e6537fea298397212f09a61e03311686f548e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xc7198437980c041c805a1edcba50c1ce5db95118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x532e6537fea298397212f09a61e03311686f548e)
    staticcall 0x532e6537fea298397212f09a61e03311686f548e.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] >= 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0] > -(100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0] < -(100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    require ext_code.size(0x532e6537fea298397212f09a61e03311686f548e)
    staticcall 0x532e6537fea298397212f09a61e03311686f548e.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x532e6537fea298397212f09a61e03311686f548e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xc7198437980c041c805a1edcba50c1ce5db95118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x532e6537fea298397212f09a61e03311686f548e)
    staticcall 0x532e6537fea298397212f09a61e03311686f548e.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0 and arg1 > 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0 and arg1 < 0 and arg1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and arg1 > 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / arg1:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and arg1 < 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] == -1:
        revert with 'NH{q', 17
    if (100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0]) >= 0 and -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -(100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + -(100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if (100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0]) < 0 and -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0] < -(100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + -(100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    return ((100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0]) + (-1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0]))
}

function sub_ba81c34d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x1852dc24d1a8956a0b356aa18ede954c7a0ca5ae
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor4)
    staticcall stor4.getReserveData(address arg1) with:
            gas gas_remaining wei
           args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[315 len 5]
    if ext_call.return_data[64] and ext_call.return_data[0] > -1 / ext_call.return_data[64]:
        revert with 'NH{q', 17
    if 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[64] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a)
    staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] >= 0 and 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0] > -(100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0] < -(100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    require ext_code.size(0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a)
    staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a)
    staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0 and arg1 > 0 and 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1:
        revert with 'NH{q', 17
    if 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0 and arg1 < 0 and arg1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and arg1 > 0 and 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / arg1:
        revert with 'NH{q', 17
    if 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and arg1 < 0 and 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1:
        revert with 'NH{q', 17
    if 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if -1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] == -1:
        revert with 'NH{q', 17
    if (100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0]) >= 0 and -1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -(100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + -(100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if (100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0]) < 0 and -1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0] < -(100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + -(100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    return ((100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[64] * ext_call.return_data[0]) + (-1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0]))
}

function sub_ef77a988(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a)
    staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a)
    staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0 and arg1 > 0 and 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1:
        revert with 'NH{q', 17
    if 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0 and arg1 < 0 and arg1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and arg1 > 0 and 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / arg1:
        revert with 'NH{q', 17
    if 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and arg1 < 0 and 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1:
        revert with 'NH{q', 17
    if 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if -1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] == -1:
        revert with 'NH{q', 17
    if bool(-1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0] > 0) and 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / -1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if bool(-1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0) and -1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0xc000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if not 2 * -1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(0x532e6537fea298397212f09a61e03311686f548e)
    staticcall 0x532e6537fea298397212f09a61e03311686f548e.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x532e6537fea298397212f09a61e03311686f548e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xc7198437980c041c805a1edcba50c1ce5db95118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x532e6537fea298397212f09a61e03311686f548e)
    staticcall 0x532e6537fea298397212f09a61e03311686f548e.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0 and arg1 > 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0 and arg1 < 0 and arg1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and arg1 > 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / arg1:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and arg1 < 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] == -1:
        revert with 'NH{q', 17
    if bool(-1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0] > 0) and 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if bool(-1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0) and -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0xc000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if not 2 * -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857)
    staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor6)
    staticcall stor6.getAssetData(address arg1) with:
            gas gas_remaining wei
           args 0x46a51127c3ce23fb7ab1de06226147f446e4a857
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[32] and uint32(stor3.field_0) > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * uint32(stor3.field_0):
        revert with 'NH{q', 17
    if ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857)
    staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0 and arg1 > 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] > 0 and arg1 < 0 and arg1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and arg1 > 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / arg1:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0 and arg1 < 0 and 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1:
        revert with 'NH{q', 17
    if 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] == -1:
        revert with 'NH{q', 17
    if bool(-1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0] > 0) and 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if bool(-1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0) and -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0xc000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if not 2 * -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 10^18 / 2 * -1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0] >= 0 and 10^18 / 2 * -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -(10^18 / 2 * -1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 10^18 / 2 * -1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0 and 10^18 / 2 * -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0] < -(10^18 / 2 * -1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if (10^18 / 2 * -1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (10^18 / 2 * -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) >= 0 and 10^18 / 2 * -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -(10^18 / 2 * -1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + -(10^18 / 2 * -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if (10^18 / 2 * -1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (10^18 / 2 * -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) < 0 and 10^18 / 2 * -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0] < -(10^18 / 2 * -1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + -(10^18 / 2 * -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    return ((10^18 / 2 * -1 * 100 * 10^18 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (2 * 10^18 / 2 * -1 * 100 * 10^6 * ext_call.return_data[32] * uint32(stor3.field_0) * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * arg1 / ext_call.return_data[0]))
}



}
