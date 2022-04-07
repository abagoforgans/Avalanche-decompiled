contract main {




// =====================  Runtime code  =====================


#
#  - withdrawAll(address arg1, address arg2)
#
const snob = 0xc38f41a296a4493ff429f1238e030924a1542e50

const feeDistribution = 0xad86ef5fd2ebc25bb9db41a1fe8d0f2a322c7839

const gaugeProxy = 0x215d5edeb6a6a3f84ae9d72962feaccdf815bf27

const proxy = 0x73ab4ba008f2d4997f5df6e1c286bb46eb777f


address yveCRVAddress;
mapping of address strategies;
mapping of uint8 stor2;
address governanceAddress;
uint256 stor4;

function strategies(address arg1) payable {
    require calldata.size - 4 >= 32
    return strategies[arg1]
}

function governance() payable {
    return governanceAddress
}

function voters(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function yveCRV() payable {
    return yveCRVAddress
}

function _fallback() payable {
    revert
}

function sub_3789a6ae(?) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    yveCRVAddress = arg1
}

function revokeVoter(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor2[address(arg1)] = 0
}

function approveVoter(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor2[address(arg1)] = 1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function revokeStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    strategies[address(arg1)] = 0
}

function approveStrategy(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    strategies[address(arg1)] = arg2
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args 0x73ab4ba008f2d4997f5df6e1c286bb46eb777f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function lock() payable {
    require ext_code.size(0xc38f41a296a4493ff429f1238e030924a1542e50)
    staticcall 0xc38f41a296a4493ff429f1238e030924a1542e50.0x70a08231 with:
            gas gas_remaining wei
           args 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(0x73ab4ba008f2d4997f5df6e1c286bb46eb777f)
        call 0x0073ab4ba008f2d4997f5df6e1c286bb46eb777f.increaseAmount(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if strategies[address(arg1)] != msg.sender:
        revert with 0, '!strategy'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[164] = 0xb61d27f600000000000000000000000000000000000000000000000000000000
    mem[168] = arg1
    mem[200] = 0
    mem[232] = 96
    mem[264] = 36
    mem[296 len 64] = unknown_0x2e1a7d4d(?????), arg3, 0, address(arg1) << 32
    mem[328] = 0
    require ext_code.size(0x73ab4ba008f2d4997f5df6e1c286bb46eb777f)
    call 0x0073ab4ba008f2d4997f5df6e1c286bb46eb777f.0xb61d27f6 with:
         gas gas_remaining wei
        args address(arg1), 0, 96, 36, unknown_0x2e1a7d4d(?????), arg3, 0, address(arg1) << 32, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[164 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    _247 = mem[164 len 4], address(arg1) << 64
    require 32 <= return_data.size
    require return_data.size >= mem[164 len 4], address(arg1) << 64 + 32 and mem[164 len 4], address(arg1) << 64 <= 4294967296
    mem[ceil32(return_data.size) + 164] = mem[164 len 4], address(arg1) << 64
    mem[ceil32(return_data.size) + 196 len ceil32(mem[164 len 4], address(arg1) << 64)] = mem[196 len ceil32(mem[164 len 4], address(arg1) << 64)]
    require _247
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args 0x73ab4ba008f2d4997f5df6e1c286bb46eb777f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[mem[164 len 4], address(arg1) << 64 + ceil32(return_data.size) + 296] = msg.sender
    mem[mem[164 len 4], address(arg1) << 64 + ceil32(return_data.size) + 328] = 0
    mem[0] = arg1
    mem[mem[164 len 4], address(arg1) << 64 + ceil32(return_data.size) + 360] = 0xb61d27f600000000000000000000000000000000000000000000000000000000
    mem[mem[164 len 4], address(arg1) << 64 + ceil32(return_data.size) + 364] = arg2
    mem[mem[164 len 4], address(arg1) << 64 + ceil32(return_data.size) + 396] = 0
    mem[mem[164 len 4], address(arg1) << 64 + ceil32(return_data.size) + 428] = 96
    mem[mem[164 len 4], address(arg1) << 64 + ceil32(return_data.size) + 460] = 68
    mem[mem[164 len 4], address(arg1) << 64 + ceil32(return_data.size) + 492 len 96] = transfer(address rg1, uint256 rg2), msg.sender, 0, 0, address(arg2) << 32
    mem[mem[164 len 4], address(arg1) << 64 + ceil32(return_data.size) + 556] = 0
    require ext_code.size(0x73ab4ba008f2d4997f5df6e1c286bb46eb777f)
    call 0x0073ab4ba008f2d4997f5df6e1c286bb46eb777f.0xb61d27f6 with:
         gas gas_remaining wei
        args address(arg2), 0, 96, 68, transfer(address rg1, uint256 rg2), msg.sender, 0, 0, address(arg2) << 32 >> 256, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[164 len 4], address(arg1) << 64 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require 32 <= return_data.size
    require return_data.size >= mem[mem[164 len 4], address(arg1) << 64 + ceil32(return_data.size) + 360 len 4], address(arg2) << 64 + 32 and mem[mem[164 len 4], address(arg1) << 64 + ceil32(return_data.size) + 360 len 4], address(arg2) << 64 <= 4294967296
    require mem[mem[164 len 4], address(arg1) << 64 + ceil32(return_data.size) + 360 len 4], address(arg2) << 64
    return 0
}

function harvest(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[32] = 1
    if strategies[address(arg1)] != msg.sender:
        revert with 0, '!strategy'
    require ext_code.size(0xc38f41a296a4493ff429f1238e030924a1542e50)
    staticcall 0xc38f41a296a4493ff429f1238e030924a1542e50.0x70a08231 with:
            gas gas_remaining wei
           args 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 4
    mem[128 len 4] = getReward()
    mem[132] = 0xb61d27f600000000000000000000000000000000000000000000000000000000
    mem[136] = arg1
    mem[168] = 0
    mem[200] = 96
    mem[232] = 4
    mem[264] = 0
    require ext_code.size(0x73ab4ba008f2d4997f5df6e1c286bb46eb777f)
    call 0x0073ab4ba008f2d4997f5df6e1c286bb46eb777f.0xb61d27f6 with:
         gas gas_remaining wei
        args address(arg1), 0, 96, 4, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[132 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    _214 = mem[132 len 4], address(arg1) << 64
    require 32 <= return_data.size
    require return_data.size >= mem[132 len 4], address(arg1) << 64 + 32 and mem[132 len 4], address(arg1) << 64 <= 4294967296
    mem[ceil32(return_data.size) + 132] = mem[132 len 4], address(arg1) << 64
    mem[ceil32(return_data.size) + 164 len ceil32(mem[132 len 4], address(arg1) << 64)] = mem[164 len ceil32(mem[132 len 4], address(arg1) << 64)]
    require _214
    require ext_code.size(0xc38f41a296a4493ff429f1238e030924a1542e50)
    staticcall 0xc38f41a296a4493ff429f1238e030924a1542e50.0x70a08231 with:
            gas gas_remaining wei
           args 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[mem[132 len 4], address(arg1) << 64 + ceil32(return_data.size) + 264] = msg.sender
    mem[mem[132 len 4], address(arg1) << 64 + ceil32(return_data.size) + 296] = 0
    mem[mem[132 len 4], address(arg1) << 64 + ceil32(return_data.size) + 328] = 0xb61d27f600000000000000000000000000000000000000000000000000000000
    mem[mem[132 len 4], address(arg1) << 64 + ceil32(return_data.size) + 332] = 0xc38f41a296a4493ff429f1238e030924a1542e50
    mem[mem[132 len 4], address(arg1) << 64 + ceil32(return_data.size) + 364] = 0
    mem[mem[132 len 4], address(arg1) << 64 + ceil32(return_data.size) + 396] = 96
    mem[mem[132 len 4], address(arg1) << 64 + ceil32(return_data.size) + 428] = 68
    mem[mem[132 len 4], address(arg1) << 64 + ceil32(return_data.size) + 460 len 96] = transfer(address rg1, uint256 rg2), msg.sender, 0, 0, 0xc38f41a296a4493ff429f123
    mem[mem[132 len 4], address(arg1) << 64 + ceil32(return_data.size) + 524] = Mask(32, -512, transfer(address rg1, uint256 rg2), msg.sender, 0, 0, 0xc38f41a296a4493ff429f123) << 512
    require ext_code.size(0x73ab4ba008f2d4997f5df6e1c286bb46eb777f)
    call 0x0073ab4ba008f2d4997f5df6e1c286bb46eb777f.0xb61d27f6 with:
         gas gas_remaining wei
        args 0xc38f41a296a4493ff429f1238e030924a1542e50, 0, 96, 68, transfer(address rg1, uint256 rg2), msg.sender, 0, 0, 0xc38f41a296a4493ff429f123 >> 256, Mask(32, -512, transfer(address rg1, uint256 rg2), msg.sender, 0, 0, 0xc38f41a296a4493ff429f123) << 512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[132 len 4], address(arg1) << 64 + ceil32(return_data.size) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[132 len 4], address(arg1) << 64 + (2 * ceil32(return_data.size)) + 328
    require return_data.size >= 64
    _623 = mem[mem[132 len 4], address(arg1) << 64 + ceil32(return_data.size) + 328 len 4], 0xc38f41a296a4493ff429f1238e030924
    require 2706648656, 0 <= 4294967296
    require 2706648656, 0 + 32 <= return_data.size
    require return_data.size >= mem[mem[132 len 4], address(arg1) << 64 + ceil32(return_data.size) + 2706648656, 0 + 328] + 2706648656, 0 + 32 and mem[mem[132 len 4], address(arg1) << 64 + ceil32(return_data.size) + 2706648656, 0 + 328] <= 4294967296
    mem[mem[132 len 4], address(arg1) << 64 + (2 * ceil32(return_data.size)) + 328] = mem[mem[132 len 4], address(arg1) << 64 + ceil32(return_data.size) + 2706648656, 0 + 328]
    require _623
}

function vote(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, '!voter'
    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 64
    mem[(32 * arg1.length) + (32 * arg2.length) + 260] = arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 292 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = (32 * arg1.length) + 96
    mem[(64 * arg1.length) + (32 * arg2.length) + 292] = arg2.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = (32 * arg1.length) + (32 * arg2.length) + 132
    mem[(32 * arg1.length) + (32 * arg2.length) + 196 len 28] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 4] = unknown_0x6f816a20(?????)
    mem[0] = msg.sender
    mem[(64 * arg1.length) + (64 * arg2.length) + 324] = 0xb61d27f600000000000000000000000000000000000000000000000000000000
    mem[(64 * arg1.length) + (64 * arg2.length) + 328] = 0x215d5edeb6a6a3f84ae9d72962feaccdf815bf27
    mem[(64 * arg1.length) + (64 * arg2.length) + 360] = 0
    mem[(64 * arg1.length) + (64 * arg2.length) + 392] = 96
    mem[(64 * arg1.length) + (64 * arg2.length) + 424] = (32 * arg1.length) + (32 * arg2.length) + 132
    mem[(64 * arg1.length) + (64 * arg2.length) + 456 len floor32((32 * arg1.length) + (32 * arg2.length) + 163)] = unknown_0x6f816a20(?????), 0, 0, (32 * arg1.length) + 96, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 292 len floor32((32 * arg1.length) + (32 * arg2.length) + 163) + -floor32(arg1.length) - 100]
    if not (32 * arg1.length) + (32 * arg2.length) + 132 % 32:
        require ext_code.size(0x73ab4ba008f2d4997f5df6e1c286bb46eb777f)
        call 0x0073ab4ba008f2d4997f5df6e1c286bb46eb777f.0xb61d27f6 with:
             gas gas_remaining wei
            args mem[(64 * arg1.length) + (64 * arg2.length) + 328 len (160 * arg1.length) + (32 * arg2.length) + 260]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(64 * arg1.length) + (64 * arg2.length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (64 * arg1.length) + (64 * arg2.length) + ceil32(return_data.size) + 324
        require return_data.size >= 64
        _104 = mem[(64 * arg1.length) + (64 * arg2.length) + 324 len 4], 0x215d5edeb6a6a3f84ae9d72962feaccd
        require 4162174759, 0 <= 4294967296
        require 4162174759, 0 + 32 <= return_data.size
        require return_data.size >= mem[(64 * arg1.length) + (64 * arg2.length) + 4162174759, 0 + 324] + 4162174759, 0 + 32 and mem[(64 * arg1.length) + (64 * arg2.length) + 4162174759, 0 + 324] <= 4294967296
        mem[(64 * arg1.length) + (64 * arg2.length) + ceil32(return_data.size) + 324] = mem[(64 * arg1.length) + (64 * arg2.length) + 4162174759, 0 + 324]
        if _104:
    else:
        mem[floor32((32 * arg1.length) + (32 * arg2.length) + 132) + (64 * arg1.length) + (64 * arg2.length) + 456] = Mask(8 * floor32((32 * arg1.length) + (32 * arg2.length) + 163) + -floor32((32 * arg1.length) + (32 * arg2.length) + 132) + ((32 * arg1.length) + (32 * arg2.length) + 132 % 32) - 32, -(8 * floor32((32 * arg1.length) + (32 * arg2.length) + 163)) + 256, mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 292 len floor32((32 * arg1.length) + (32 * arg2.length) + 163) + -floor32(arg1.length) - 100]) << (8 * floor32((32 * arg1.length) + (32 * arg2.length) + 163)) - 256, mem[(64 * arg1.length) + (64 * arg2.length) + floor32((32 * arg1.length) + (32 * arg2.length) + 163) + 456 len floor32((32 * arg1.length) + (32 * arg2.length) + 132) + -floor32((32 * arg1.length) + (32 * arg2.length) + 163) + 32]
        require ext_code.size(0x73ab4ba008f2d4997f5df6e1c286bb46eb777f)
        call 0x0073ab4ba008f2d4997f5df6e1c286bb46eb777f.0xb61d27f6 with:
             gas gas_remaining wei
            args mem[(64 * arg1.length) + (64 * arg2.length) + 328 len floor32((32 * arg1.length) + (32 * arg2.length) + 132) + (127 * arg1.length) + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(64 * arg1.length) + (64 * arg2.length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (64 * arg1.length) + (64 * arg2.length) + ceil32(return_data.size) + 324
        require return_data.size >= 64
        _108 = mem[(64 * arg1.length) + (64 * arg2.length) + 324 len 4], 0x215d5edeb6a6a3f84ae9d72962feaccd
        require 4162174759, 0 <= 4294967296
        require 4162174759, 0 + 32 <= return_data.size
        require return_data.size >= mem[(64 * arg1.length) + (64 * arg2.length) + 4162174759, 0 + 324] + 4162174759, 0 + 32 and mem[(64 * arg1.length) + (64 * arg2.length) + 4162174759, 0 + 324] <= 4294967296
        mem[(64 * arg1.length) + (64 * arg2.length) + ceil32(return_data.size) + 324] = mem[(64 * arg1.length) + (64 * arg2.length) + 4162174759, 0 + 324]
        if _108:
    revert
}

function claim(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == yveCRVAddress:
        if stor4 + (168 * 24 * 3600) < stor4:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp < stor4 + (168 * 24 * 3600):
        require ext_code.size(0xad86ef5fd2ebc25bb9db41a1fe8d0f2a322c7839)
        call 0xad86ef5fd2ebc25bb9db41a1fe8d0f2a322c7839.claim_many(address[20] rg1) with:
             gas gas_remaining wei
            args 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xad86ef5fd2ebc25bb9db41a1fe8d0f2a322c7839)
        staticcall 0xad86ef5fd2ebc25bb9db41a1fe8d0f2a322c7839.0x2a2a314b with:
                gas gas_remaining wei
               args 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor4 = ext_call.return_data[0]
        require ext_code.size(0xc38f41a296a4493ff429f1238e030924a1542e50)
        staticcall 0xc38f41a296a4493ff429f1238e030924a1542e50.0x70a08231 with:
                gas gas_remaining wei
               args 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
        mem[804] = ext_call.return_data[0]
        mem[836] = 0xb61d27f600000000000000000000000000000000000000000000000000000000
        require ext_code.size(0x73ab4ba008f2d4997f5df6e1c286bb46eb777f)
        call 0x0073ab4ba008f2d4997f5df6e1c286bb46eb777f.0xb61d27f6 with:
             gas gas_remaining wei
            args 0xc38f41a296a4493ff429f1238e030924a1542e50, 0, 96, 68, 0, address(arg1), ext_call.return_data[0], 0, 0xc38f41a296a4493ff429f123 >> 256, Mask(32, -512, 0, address(arg1), ext_call.return_data[0], 0, 0xc38f41a296a4493ff429f123) << 512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        _121 = mem[836 len 4], 0xc38f41a296a4493ff429f1238e030924
        require 2706648656, 0 <= 4294967296
        require 2706648656, 0 + 32 <= return_data.size
        require return_data.size >= mem[2706648656, 0 + 836] + 2706648656, 0 + 32 and mem[2706648656, 0 + 836] <= 4294967296
        mem[ceil32(return_data.size) + 836] = mem[2706648656, 0 + 836]
        if _121:
    else:
        if governanceAddress != msg.sender:
            revert with 0, '!strategy'
        if stor4 + (168 * 24 * 3600) < stor4:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp < stor4 + (168 * 24 * 3600):
        require ext_code.size(0xad86ef5fd2ebc25bb9db41a1fe8d0f2a322c7839)
        call 0xad86ef5fd2ebc25bb9db41a1fe8d0f2a322c7839.claim_many(address[20] rg1) with:
             gas gas_remaining wei
            args 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f, 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xad86ef5fd2ebc25bb9db41a1fe8d0f2a322c7839)
        staticcall 0xad86ef5fd2ebc25bb9db41a1fe8d0f2a322c7839.0x2a2a314b with:
                gas gas_remaining wei
               args 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor4 = ext_call.return_data[0]
        require ext_code.size(0xc38f41a296a4493ff429f1238e030924a1542e50)
        staticcall 0xc38f41a296a4493ff429f1238e030924a1542e50.0x70a08231 with:
                gas gas_remaining wei
               args 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
        mem[804] = ext_call.return_data[0]
        mem[836] = 0xb61d27f600000000000000000000000000000000000000000000000000000000
        require ext_code.size(0x73ab4ba008f2d4997f5df6e1c286bb46eb777f)
        call 0x0073ab4ba008f2d4997f5df6e1c286bb46eb777f.0xb61d27f6 with:
             gas gas_remaining wei
            args 0xc38f41a296a4493ff429f1238e030924a1542e50, 0, 96, 68, 0, address(arg1), ext_call.return_data[0], 0, 0xc38f41a296a4493ff429f123 >> 256, Mask(32, -512, 0, address(arg1), ext_call.return_data[0], 0, 0xc38f41a296a4493ff429f123) << 512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        _124 = mem[836 len 4], 0xc38f41a296a4493ff429f1238e030924
        require 2706648656, 0 <= 4294967296
        require 2706648656, 0 + 32 <= return_data.size
        require return_data.size >= mem[2706648656, 0 + 836] + 2706648656, 0 + 32 and mem[2706648656, 0 + 836] <= 4294967296
        mem[ceil32(return_data.size) + 836] = mem[2706648656, 0 + 836]
        if _124:
    revert
}

function deposit(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    mem[32] = 1
    if strategies[address(arg1)] != msg.sender:
        revert with 0, '!strategy'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[132] = 0x73ab4ba008f2d4997f5df6e1c286bb46eb777f
    mem[164] = ext_call.return_data[0]
    mem[96] = 68
    mem[132 len 28] = 0x73ab4ba008f2d4997f5df6e1c286bb
    mem[128 len 4] = transfer(address rg1, uint256 rg2)
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg2):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = transfer(address rg1, uint256 rg2), 139835388961792433443528182, 0, ext_call.return_data[0 len 28]
    mem[288 len 4] = ext_call.return_data[20 len 4]
    call arg2.0x46eb777f with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not transfer(address rg1, uint256 rg2), 139835388961792433443528182:
            revert with 0, 32, 42, 0x765361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[232] = arg1
        mem[264] = 0
        mem[196] = 68
        mem[64] = 296
        mem[228 len 4] = approve(address rg1, uint256 rg2)
        mem[296] = 0xb61d27f600000000000000000000000000000000000000000000000000000000
        mem[300] = arg2
        mem[332] = 0
        mem[364] = 96
        mem[396] = 68
        mem[428 len 96] = 0, address(arg1), 0, 0, address(arg2) << 32
        mem[492] = 0
        require ext_code.size(0x73ab4ba008f2d4997f5df6e1c286bb46eb777f)
        call 0x0073ab4ba008f2d4997f5df6e1c286bb46eb777f.0xb61d27f6 with:
             gas gas_remaining wei
            args address(arg2), 0, 96, 68, 0, address(arg1), 0, 0, address(arg2) << 32 >> 256, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[296 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        _4848 = mem[296 len 4], address(arg2) << 64
        require 32 <= return_data.size
        require return_data.size >= mem[296 len 4], address(arg2) << 64 + 32 and mem[296 len 4], address(arg2) << 64 <= 4294967296
        mem[ceil32(return_data.size) + 296] = mem[296 len 4], address(arg2) << 64
        mem[ceil32(return_data.size) + 328 len ceil32(mem[296 len 4], address(arg2) << 64)] = mem[328 len ceil32(mem[296 len 4], address(arg2) << 64)]
        if _4848:
            mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 364] = arg1
            mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 396] = ext_call.return_data[0]
            mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 328] = 68
            mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 364 len 28] = address(arg1) << 64
            mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 360 len 4] = approve(address rg1, uint256 rg2)
            mem[0] = arg1
            mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 428] = 0xb61d27f600000000000000000000000000000000000000000000000000000000
            mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 432] = arg2
            mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 464] = 0
            mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 496] = 96
            mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 528] = 68
            mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 560 len 96] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0], 0, address(arg2) << 32
            mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 624] = 0
            require ext_code.size(0x73ab4ba008f2d4997f5df6e1c286bb46eb777f)
            call 0x0073ab4ba008f2d4997f5df6e1c286bb46eb777f.0xb61d27f6 with:
                 gas gas_remaining wei
                args address(arg2), 0, 96, 68, approve(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0], 0, address(arg2) << 32 >> 256, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 428 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            _9547 = mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 428 len 4], address(arg2) << 64
            require 32 <= return_data.size
            require return_data.size >= mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 428 len 4], address(arg2) << 64 + 32 and mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 428 len 4], address(arg2) << 64 <= 4294967296
            mem[mem[296 len 4], address(arg2) << 64 + (2 * ceil32(return_data.size)) + 428] = mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 428 len 4], address(arg2) << 64
            mem[mem[296 len 4], address(arg2) << 64 + (2 * ceil32(return_data.size)) + 460 len ceil32(mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 428 len 4], address(arg2) << 64)] = mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 460 len ceil32(mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 428 len 4], address(arg2) << 64)]
            if _9547:
                mem[mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 428 len 4], address(arg2) << 64 + mem[296 len 4], address(arg2) << 64 + (2 * ceil32(return_data.size)) + 496] = ext_call.return_data[0]
                mem[0] = arg1
                mem[mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 428 len 4], address(arg2) << 64 + mem[296 len 4], address(arg2) << 64 + (2 * ceil32(return_data.size)) + 528] = 0xb61d27f600000000000000000000000000000000000000000000000000000000
                mem[mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 428 len 4], address(arg2) << 64 + mem[296 len 4], address(arg2) << 64 + (2 * ceil32(return_data.size)) + 532] = arg1
                mem[mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 428 len 4], address(arg2) << 64 + mem[296 len 4], address(arg2) << 64 + (2 * ceil32(return_data.size)) + 564] = 0
                mem[mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 428 len 4], address(arg2) << 64 + mem[296 len 4], address(arg2) << 64 + (2 * ceil32(return_data.size)) + 596] = 96
                mem[mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 428 len 4], address(arg2) << 64 + mem[296 len 4], address(arg2) << 64 + (2 * ceil32(return_data.size)) + 628] = 36
                mem[mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 428 len 4], address(arg2) << 64 + mem[296 len 4], address(arg2) << 64 + (2 * ceil32(return_data.size)) + 660 len 64] = unknown_0xb6b55f25(?????), ext_call.return_data[0 len 28], ext_call.return_data[28 len 4], 0, address(arg1) << 32
                mem[mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 428 len 4], address(arg2) << 64 + mem[296 len 4], address(arg2) << 64 + (2 * ceil32(return_data.size)) + 692] = 0
                require ext_code.size(0x73ab4ba008f2d4997f5df6e1c286bb46eb777f)
                call 0x0073ab4ba008f2d4997f5df6e1c286bb46eb777f.0xb61d27f6 with:
                     gas gas_remaining wei
                    args address(arg1), 0, 96, 36, unknown_0xb6b55f25(?????), ext_call.return_data[0 len 28], ext_call.return_data[28 len 4], 0, address(arg1) << 32, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 428 len 4], address(arg2) << 64 + mem[296 len 4], address(arg2) << 64 + (2 * ceil32(return_data.size)) + 528 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require 32 <= return_data.size
                require return_data.size >= mem[mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 428 len 4], address(arg2) << 64 + mem[296 len 4], address(arg2) << 64 + (2 * ceil32(return_data.size)) + 528 len 4], address(arg1) << 64 + 32 and mem[mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 428 len 4], address(arg2) << 64 + mem[296 len 4], address(arg2) << 64 + (2 * ceil32(return_data.size)) + 528 len 4], address(arg1) << 64 <= 4294967296
                if mem[mem[mem[296 len 4], address(arg2) << 64 + ceil32(return_data.size) + 428 len 4], address(arg2) << 64 + mem[296 len 4], address(arg2) << 64 + (2 * ceil32(return_data.size)) + 528 len 4], address(arg1) << 64:
    else:
        mem[196] = return_data.size
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 233] = arg1
            mem[ceil32(return_data.size) + 265] = 0
            mem[ceil32(return_data.size) + 197] = 68
            mem[64] = ceil32(return_data.size) + 297
            mem[ceil32(return_data.size) + 229 len 4] = approve(address rg1, uint256 rg2)
            mem[ceil32(return_data.size) + 297] = 0xb61d27f600000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 301] = arg2
            mem[ceil32(return_data.size) + 333] = 0
            mem[ceil32(return_data.size) + 365] = 96
            mem[ceil32(return_data.size) + 397] = 68
            mem[ceil32(return_data.size) + 429 len 96] = 0, address(arg1), 0, 0, address(arg2) << 32
            mem[ceil32(return_data.size) + 493] = 0
            require ext_code.size(0x73ab4ba008f2d4997f5df6e1c286bb46eb777f)
            call 0x0073ab4ba008f2d4997f5df6e1c286bb46eb777f.0xb61d27f6 with:
                 gas gas_remaining wei
                args address(arg2), 0, 96, 68, 0, address(arg1), 0, 0, address(arg2) << 32 >> 256, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 297 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            _4851 = mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64
            require 32 <= return_data.size
            require return_data.size >= mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + 32 and mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 <= 4294967296
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329 len ceil32(mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64)] = mem[ceil32(return_data.size) + 329 len ceil32(mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64)]
            if _4851:
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 365] = arg1
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = ext_call.return_data[0]
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 68
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 365 len 28] = address(arg1) << 64
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 4] = approve(address rg1, uint256 rg2)
                mem[0] = arg1
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429] = 0xb61d27f600000000000000000000000000000000000000000000000000000000
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 433] = arg2
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 465] = 0
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 497] = 96
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 529] = 68
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 561 len 96] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0], 0, address(arg2) << 32
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 625] = 0
                require ext_code.size(0x73ab4ba008f2d4997f5df6e1c286bb46eb777f)
                call 0x0073ab4ba008f2d4997f5df6e1c286bb46eb777f.0xb61d27f6 with:
                     gas gas_remaining wei
                    args address(arg2), 0, 96, 68, approve(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0], 0, address(arg2) << 32 >> 256, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                _9559 = mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64
                require 32 <= return_data.size
                require return_data.size >= mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + 32 and mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 <= 4294967296
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 429] = mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 461 len ceil32(mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64)] = mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len ceil32(mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64)]
                if _9559:
                    mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 497] = ext_call.return_data[0]
                    mem[0] = arg1
                    mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 529] = 0xb61d27f600000000000000000000000000000000000000000000000000000000
                    mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 533] = arg1
                    mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 565] = 0
                    mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 597] = 96
                    mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 629] = 36
                    mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 661 len 64] = unknown_0xb6b55f25(?????), ext_call.return_data[0 len 28], ext_call.return_data[28 len 4], 0, address(arg1) << 32
                    mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 693] = 0
                    require ext_code.size(0x73ab4ba008f2d4997f5df6e1c286bb46eb777f)
                    call 0x0073ab4ba008f2d4997f5df6e1c286bb46eb777f.0xb61d27f6 with:
                         gas gas_remaining wei
                        args address(arg1), 0, 96, 36, unknown_0xb6b55f25(?????), ext_call.return_data[0 len 28], ext_call.return_data[28 len 4], 0, address(arg1) << 32, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 529 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require 32 <= return_data.size
                    require return_data.size >= mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 529 len 4], address(arg1) << 64 + 32 and mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 529 len 4], address(arg1) << 64 <= 4294967296
                    if mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 529 len 4], address(arg1) << 64:
        else:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x765361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args 0xfe00000000000000000000000073ab4ba008f2d4997f5df6e1c286bb46eb777f
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 233] = arg1
            mem[ceil32(return_data.size) + 265] = 0
            mem[ceil32(return_data.size) + 197] = 68
            mem[64] = ceil32(return_data.size) + 297
            mem[ceil32(return_data.size) + 229 len 4] = approve(address rg1, uint256 rg2)
            mem[ceil32(return_data.size) + 297] = 0xb61d27f600000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 301] = arg2
            mem[ceil32(return_data.size) + 333] = 0
            mem[ceil32(return_data.size) + 365] = 96
            mem[ceil32(return_data.size) + 397] = 68
            mem[ceil32(return_data.size) + 429 len 96] = 0, address(arg1), 0, 0, address(arg2) << 32
            mem[ceil32(return_data.size) + 493] = 0
            require ext_code.size(0x73ab4ba008f2d4997f5df6e1c286bb46eb777f)
            call 0x0073ab4ba008f2d4997f5df6e1c286bb46eb777f.0xb61d27f6 with:
                 gas gas_remaining wei
                args address(arg2), 0, 96, 68, 0, address(arg1), 0, 0, address(arg2) << 32 >> 256, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 297 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            _4854 = mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64
            require 32 <= return_data.size
            require return_data.size >= mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + 32 and mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 <= 4294967296
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329 len ceil32(mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64)] = mem[ceil32(return_data.size) + 329 len ceil32(mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64)]
            if _4854:
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 365] = arg1
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = ext_call.return_data[0]
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 68
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 365 len 28] = address(arg1) << 64
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 4] = approve(address rg1, uint256 rg2)
                mem[0] = arg1
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429] = 0xb61d27f600000000000000000000000000000000000000000000000000000000
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 433] = arg2
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 465] = 0
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 497] = 96
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 529] = 68
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 561 len 96] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0], 0, address(arg2) << 32
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 625] = 0
                require ext_code.size(0x73ab4ba008f2d4997f5df6e1c286bb46eb777f)
                call 0x0073ab4ba008f2d4997f5df6e1c286bb46eb777f.0xb61d27f6 with:
                     gas gas_remaining wei
                    args address(arg2), 0, 96, 68, approve(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0], 0, address(arg2) << 32 >> 256, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                _9571 = mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64
                require 32 <= return_data.size
                require return_data.size >= mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + 32 and mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 <= 4294967296
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 429] = mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64
                mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 461 len ceil32(mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64)] = mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len ceil32(mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64)]
                if _9571:
                    mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 497] = ext_call.return_data[0]
                    mem[0] = arg1
                    mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 529] = 0xb61d27f600000000000000000000000000000000000000000000000000000000
                    mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 533] = arg1
                    mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 565] = 0
                    mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 597] = 96
                    mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 629] = 36
                    mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 661 len 64] = unknown_0xb6b55f25(?????), ext_call.return_data[0 len 28], ext_call.return_data[28 len 4], 0, address(arg1) << 32
                    mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 693] = 0
                    require ext_code.size(0x73ab4ba008f2d4997f5df6e1c286bb46eb777f)
                    call 0x0073ab4ba008f2d4997f5df6e1c286bb46eb777f.0xb61d27f6 with:
                         gas gas_remaining wei
                        args address(arg1), 0, 96, 36, unknown_0xb6b55f25(?????), ext_call.return_data[0 len 28], ext_call.return_data[28 len 4], 0, address(arg1) << 32, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 529 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require 32 <= return_data.size
                    require return_data.size >= mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 529 len 4], address(arg1) << 64 + 32 and mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 529 len 4], address(arg1) << 64 <= 4294967296
                    if mem[mem[mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 4], address(arg2) << 64 + mem[ceil32(return_data.size) + 297 len 4], address(arg2) << 64 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 529 len 4], address(arg1) << 64:
    revert
}



}
