contract main {




// =====================  Runtime code  =====================


#
#  - sub_2eb5c5e4(?)
#  - sub_c49f843a(?)
#  - sub_e449ca80(?)
#  - sub_f7f7b912(?)
#  - sub_fe442cff(?)
#
const DECIMAL_PRECISION = 10^18

const NAME = 'BorrowerOperations'


address stor0;
address stor50;
address stor51;
uint256 stor100;
address stor150;
address stor151;
address stor152;
address stor153;
address stor154;
uint8 stor155; offset 160
address stor155;

function _fallback() payable {
    revert
}

function getEntireSystemColl() payable {
    require ext_code.size(stor50)
    staticcall stor50.0x651340c4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getEntireSystemDebt() payable {
    require ext_code.size(stor50)
    staticcall stor50.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor51)
    staticcall stor51.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'add overflow'
    return (2 * ext_call.return_data[0])
}

function setAddresses(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8) payable {
    require calldata.size - 4 >= 256
    if uint8(stor155.field_160):
        revert with 0, 'Addresses already set'
    uint8(stor155.field_160) = 1
    if stor100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x5265656e7472616e637947756172645570677261646561626c653a20636f6e747261637420697320616c726561647920696e697469616c697a6500,
                    mem[223 len 5]
    stor100 = 1
    stor150 = arg1
    stor50 = arg2
    address(stor155.field_0) = arg2
    stor51 = arg3
    stor0 = arg8
    stor151 = arg4
    stor152 = arg5
    stor154 = arg6
    stor153 = arg7
}

function closeTrove() payable {
    if stor100 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor100 = 2
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = stor150
    mem[352] = stor50
    mem[384] = stor153
    mem[416] = stor0
    require ext_code.size(stor150)
    staticcall stor150.0x3735aa20 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, '1'
    require ext_code.size(stor50)
    staticcall stor50.0x896a0089 with:
            gas gas_remaining wei
    mem[672 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(stor50)
    staticcall stor50.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor51)
    staticcall stor51.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'add overflow'
    if not uint255(ext_call.return_data[0]):
        mem[480] = 2 * ext_call.return_data[0]
        mem[448] = ext_call.return_data[32]
        mem[640] = 0
        require ext_code.size(stor150)
        call stor150.applyPendingRewards(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[672] = 0x35a058b400000000000000000000000000000000000000000000000000000000
        mem[676] = msg.sender
        require ext_code.size(stor150)
        staticcall stor150.0x35a058b4 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[672 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 672
        require return_data.size >= 96
        _60 = mem[672 len 4], Mask(224, 32, msg.sender) >> 32
        require mem[672 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
        require mem[672 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
        require mem[mem[672 len 4], Mask(224, 32, msg.sender) >> 32 + 672] <= 4294967296 and mem[672 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[672 len 4], Mask(224, 32, msg.sender) >> 32 + 672]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 672] = mem[mem[672 len 4], Mask(224, 32, msg.sender) >> 32 + 672]
        _70 = mem[_60 + 672]
        mem[ceil32(return_data.size) + 704 len floor32(mem[_60 + 672])] = mem[_60 + 704 len floor32(mem[_60 + 672])]
        mem[64] = (32 * _70) + ceil32(return_data.size) + 704
        require uint32(msg.sender), ext_call.return_data[36 len 28] <= 4294967296
        require uint32(msg.sender), ext_call.return_data[36 len 28] + 32 <= return_data.size
        require mem[uint32(msg.sender), ext_call.return_data[36 len 28] + 672] <= 4294967296 and uint32(msg.sender), ext_call.return_data[36 len 28] + (32 * mem[uint32(msg.sender), ext_call.return_data[36 len 28] + 672]) + 32 <= return_data.size
        mem[(32 * _70) + ceil32(return_data.size) + 704] = mem[uint32(msg.sender), ext_call.return_data[36 len 28] + 672]
        _747 = mem[uint32(msg.sender), ext_call.return_data[36 len 28] + 672]
        mem[(32 * _70) + ceil32(return_data.size) + 736 len floor32(mem[uint32(msg.sender), ext_call.return_data[36 len 28] + 672])] = mem[uint32(msg.sender), ext_call.return_data[36 len 28] + 704 len floor32(mem[uint32(msg.sender), ext_call.return_data[36 len 28] + 672])]
        mem[512] = mem[736]
        mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 736] = 0xffc967b00000000000000000000000000000000000000000000000000000000
        mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 740] = 64
        mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 804] = mem[ceil32(return_data.size) + 672]
        mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 836 len floor32(mem[ceil32(return_data.size) + 672])] = mem[ceil32(return_data.size) + 704 len floor32(mem[ceil32(return_data.size) + 672])]
        mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 772] = (32 * mem[ceil32(return_data.size) + 672]) + 96
        mem[(32 * mem[ceil32(return_data.size) + 672]) + (32 * _747) + (32 * _70) + ceil32(return_data.size) + 836] = mem[(32 * _70) + ceil32(return_data.size) + 704]
        mem[(32 * mem[ceil32(return_data.size) + 672]) + (32 * _747) + (32 * _70) + ceil32(return_data.size) + 868 len floor32(mem[(32 * _70) + ceil32(return_data.size) + 704])] = mem[(32 * _70) + ceil32(return_data.size) + 736 len floor32(mem[(32 * _70) + ceil32(return_data.size) + 704])]
        require ext_code.size(stor0)
        staticcall stor0.0xffc967b with:
                gas gas_remaining wei
               args Array(len=mem[ceil32(return_data.size) + 672], data=mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 836 len (32 * mem[(32 * _70) + ceil32(return_data.size) + 704]) + (32 * mem[ceil32(return_data.size) + 672]) + 32]), (32 * mem[ceil32(return_data.size) + 672]) + 96
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 736] = 12
        mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 768] = 'sub overflow' << 160
        if 200 * 10^18 > mem[512]:
            revert with 0, 'sub overflow'
        require ext_code.size(stor153)
        staticcall stor153.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < mem[512] - 200 * 10^18:
            revert with 0, '26'
        mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 800] = 12
        mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 832] = 'sub overflow' << 160
        if ext_call.return_data[32] > ext_call.return_data[32]:
            revert with 0, 'sub overflow'
        mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 864] = 12
        mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 896] = 'sub overflow' << 160
        if mem[512] > 2 * ext_call.return_data[0]:
            revert with 0, 'sub overflow'
        if not (2 * ext_call.return_data[0]) - mem[512]:
            require ext_code.size(stor150)
            call stor150.0x66849aed with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 928] = 12
            mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 960] = 'sub overflow' << 160
            if 200 * 10^18 > mem[512]:
                revert with 0, 'sub overflow'
            require ext_code.size(stor50)
            call stor50.0xe7b1d678 with:
                 gas gas_remaining wei
                args (mem[512] - 200 * 10^18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor153)
            call stor153.burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, mem[512] - 200 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor50)
            call stor50.0xe7b1d678 with:
                 gas gas_remaining wei
                args 200 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor153)
            call stor153.burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor151, 200 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 992] = 0x564a5c2e00000000000000000000000000000000000000000000000000000000
            mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 996] = msg.sender
            mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 1028] = 96
            mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 1092] = mem[ceil32(return_data.size) + 672]
            mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 1124 len floor32(mem[ceil32(return_data.size) + 672])] = mem[ceil32(return_data.size) + 704 len floor32(mem[ceil32(return_data.size) + 672])]
            mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 1060] = (32 * mem[ceil32(return_data.size) + 672]) + 128
            mem[(32 * mem[ceil32(return_data.size) + 672]) + (32 * _747) + (32 * _70) + ceil32(return_data.size) + 1124] = mem[(32 * _70) + ceil32(return_data.size) + 704]
            mem[(32 * mem[ceil32(return_data.size) + 672]) + (32 * _747) + (32 * _70) + ceil32(return_data.size) + 1156 len floor32(mem[(32 * _70) + ceil32(return_data.size) + 704])] = mem[(32 * _70) + ceil32(return_data.size) + 736 len floor32(mem[(32 * _70) + ceil32(return_data.size) + 704])]
            require ext_code.size(stor50)
            call stor50.0x564a5c2e with:
                 gas gas_remaining wei
                args msg.sender, Array(len=mem[ceil32(return_data.size) + 672], data=mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 1124 len (32 * mem[(32 * _70) + ceil32(return_data.size) + 704]) + (32 * mem[ceil32(return_data.size) + 672]) + 32]), (32 * mem[ceil32(return_data.size) + 672]) + 128
        else:
            mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 928] = 8
            mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 960] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if not (2 * ext_call.return_data[0]) - mem[512]:
                revert with 0, ''
            if 0 / (2 * ext_call.return_data[0]) - mem[512] < 15 * 10^17:
                revert with 0, '23'
            require ext_code.size(stor150)
            call stor150.0x66849aed with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 992] = 12
            mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 1024] = 'sub overflow' << 160
            if 200 * 10^18 > mem[512]:
                revert with 0, 'sub overflow'
            require ext_code.size(stor50)
            call stor50.0xe7b1d678 with:
                 gas gas_remaining wei
                args (mem[512] - 200 * 10^18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor153)
            call stor153.burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, mem[512] - 200 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor50)
            call stor50.0xe7b1d678 with:
                 gas gas_remaining wei
                args 200 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor153)
            call stor153.burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor151, 200 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 1056] = 0x564a5c2e00000000000000000000000000000000000000000000000000000000
            mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 1060] = msg.sender
            mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 1092] = 96
            mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 1156] = mem[ceil32(return_data.size) + 672]
            mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 1188 len floor32(mem[ceil32(return_data.size) + 672])] = mem[ceil32(return_data.size) + 704 len floor32(mem[ceil32(return_data.size) + 672])]
            mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 1124] = (32 * mem[ceil32(return_data.size) + 672]) + 128
            mem[(32 * mem[ceil32(return_data.size) + 672]) + (32 * _747) + (32 * _70) + ceil32(return_data.size) + 1188] = mem[(32 * _70) + ceil32(return_data.size) + 704]
            mem[(32 * mem[ceil32(return_data.size) + 672]) + (32 * _747) + (32 * _70) + ceil32(return_data.size) + 1220 len floor32(mem[(32 * _70) + ceil32(return_data.size) + 704])] = mem[(32 * _70) + ceil32(return_data.size) + 736 len floor32(mem[(32 * _70) + ceil32(return_data.size) + 704])]
            require ext_code.size(stor50)
            call stor50.0x564a5c2e with:
                 gas gas_remaining wei
                args msg.sender, Array(len=mem[ceil32(return_data.size) + 672], data=mem[(32 * _747) + (32 * _70) + ceil32(return_data.size) + 1188 len (32 * mem[(32 * _70) + ceil32(return_data.size) + 704]) + (32 * mem[ceil32(return_data.size) + 672]) + 32]), (32 * mem[ceil32(return_data.size) + 672]) + 128
    else:
        if not ext_call.return_data[32]:
            mem[672] = 8
            mem[704] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if not 2 * ext_call.return_data[0]:
                revert with 0, ''
            mem[480] = 2 * ext_call.return_data[0]
            mem[448] = ext_call.return_data[32]
            mem[640] = 0 / 2 * ext_call.return_data[0] < 15 * 10^17
            if 0 / 2 * ext_call.return_data[0] < 15 * 10^17:
                revert with 0, '7'
            require ext_code.size(stor150)
            call stor150.applyPendingRewards(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[736] = 0x35a058b400000000000000000000000000000000000000000000000000000000
            mem[740] = msg.sender
            require ext_code.size(stor150)
            staticcall stor150.0x35a058b4 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[736 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 736
            require return_data.size >= 96
            _93 = mem[736 len 4], Mask(224, 32, msg.sender) >> 32
            require mem[736 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
            require mem[736 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
            require mem[mem[736 len 4], Mask(224, 32, msg.sender) >> 32 + 736] <= 4294967296 and mem[736 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[736 len 4], Mask(224, 32, msg.sender) >> 32 + 736]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 736] = mem[mem[736 len 4], Mask(224, 32, msg.sender) >> 32 + 736]
            _103 = mem[_93 + 736]
            mem[ceil32(return_data.size) + 768 len floor32(mem[_93 + 736])] = mem[_93 + 768 len floor32(mem[_93 + 736])]
            mem[64] = (32 * _103) + ceil32(return_data.size) + 768
            _734 = uint32(msg.sender), mem[772 len 28]
            require uint32(msg.sender), mem[772 len 28] <= 4294967296
            require uint32(msg.sender), mem[772 len 28] + 32 <= return_data.size
            require mem[uint32(msg.sender), mem[772 len 28] + 736] <= 4294967296 and uint32(msg.sender), mem[772 len 28] + (32 * mem[uint32(msg.sender), mem[772 len 28] + 736]) + 32 <= return_data.size
            mem[(32 * _103) + ceil32(return_data.size) + 768] = mem[uint32(msg.sender), mem[772 len 28] + 736]
            _749 = mem[_734 + 736]
            mem[(32 * _103) + ceil32(return_data.size) + 800 len floor32(mem[_734 + 736])] = mem[_734 + 768 len floor32(mem[_734 + 736])]
            mem[512] = mem[800]
            mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 800] = 0xffc967b00000000000000000000000000000000000000000000000000000000
            mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 804] = 64
            mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 868] = mem[ceil32(return_data.size) + 736]
            mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 900 len floor32(mem[ceil32(return_data.size) + 736])] = mem[ceil32(return_data.size) + 768 len floor32(mem[ceil32(return_data.size) + 736])]
            mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 836] = (32 * mem[ceil32(return_data.size) + 736]) + 96
            mem[(32 * mem[ceil32(return_data.size) + 736]) + (32 * _749) + (32 * _103) + ceil32(return_data.size) + 900] = mem[(32 * _103) + ceil32(return_data.size) + 768]
            mem[(32 * mem[ceil32(return_data.size) + 736]) + (32 * _749) + (32 * _103) + ceil32(return_data.size) + 932 len floor32(mem[(32 * _103) + ceil32(return_data.size) + 768])] = mem[(32 * _103) + ceil32(return_data.size) + 800 len floor32(mem[(32 * _103) + ceil32(return_data.size) + 768])]
            require ext_code.size(stor0)
            staticcall stor0.0xffc967b with:
                    gas gas_remaining wei
                   args Array(len=mem[ceil32(return_data.size) + 736], data=mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 900 len (32 * mem[(32 * _103) + ceil32(return_data.size) + 768]) + (32 * mem[ceil32(return_data.size) + 736]) + 32]), (32 * mem[ceil32(return_data.size) + 736]) + 96
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 800] = 12
            mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 832] = 'sub overflow' << 160
            if 200 * 10^18 > mem[512]:
                revert with 0, 'sub overflow'
            require ext_code.size(stor153)
            staticcall stor153.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < mem[512] - 200 * 10^18:
                revert with 0, '26'
            mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 864] = 12
            mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 896] = 'sub overflow' << 160
            if ext_call.return_data[32] > ext_call.return_data[32]:
                revert with 0, 'sub overflow'
            mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 928] = 12
            mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 960] = 'sub overflow' << 160
            if mem[512] > 2 * ext_call.return_data[0]:
                revert with 0, 'sub overflow'
            if not (2 * ext_call.return_data[0]) - mem[512]:
                require ext_code.size(stor150)
                call stor150.0x66849aed with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 992] = 12
                mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 1024] = 'sub overflow' << 160
                if 200 * 10^18 > mem[512]:
                    revert with 0, 'sub overflow'
                require ext_code.size(stor50)
                call stor50.0xe7b1d678 with:
                     gas gas_remaining wei
                    args (mem[512] - 200 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor153)
                call stor153.burn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, mem[512] - 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor50)
                call stor50.0xe7b1d678 with:
                     gas gas_remaining wei
                    args 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor153)
                call stor153.burn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor151, 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 1056] = 0x564a5c2e00000000000000000000000000000000000000000000000000000000
                mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 1060] = msg.sender
                mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 1092] = 96
                mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 1156] = mem[ceil32(return_data.size) + 736]
                mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 1188 len floor32(mem[ceil32(return_data.size) + 736])] = mem[ceil32(return_data.size) + 768 len floor32(mem[ceil32(return_data.size) + 736])]
                mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 1124] = (32 * mem[ceil32(return_data.size) + 736]) + 128
                mem[(32 * mem[ceil32(return_data.size) + 736]) + (32 * _749) + (32 * _103) + ceil32(return_data.size) + 1188] = mem[(32 * _103) + ceil32(return_data.size) + 768]
                mem[(32 * mem[ceil32(return_data.size) + 736]) + (32 * _749) + (32 * _103) + ceil32(return_data.size) + 1220 len floor32(mem[(32 * _103) + ceil32(return_data.size) + 768])] = mem[(32 * _103) + ceil32(return_data.size) + 800 len floor32(mem[(32 * _103) + ceil32(return_data.size) + 768])]
                require ext_code.size(stor50)
                call stor50.0x564a5c2e with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=mem[ceil32(return_data.size) + 736], data=mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 1188 len (32 * mem[(32 * _103) + ceil32(return_data.size) + 768]) + (32 * mem[ceil32(return_data.size) + 736]) + 32]), (32 * mem[ceil32(return_data.size) + 736]) + 128
            else:
                mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 992] = 8
                mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 1024] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if not (2 * ext_call.return_data[0]) - mem[512]:
                    revert with 0, ''
                if 0 / (2 * ext_call.return_data[0]) - mem[512] < 15 * 10^17:
                    revert with 0, '23'
                require ext_code.size(stor150)
                call stor150.0x66849aed with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 1056] = 12
                mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 1088] = 'sub overflow' << 160
                if 200 * 10^18 > mem[512]:
                    revert with 0, 'sub overflow'
                require ext_code.size(stor50)
                call stor50.0xe7b1d678 with:
                     gas gas_remaining wei
                    args (mem[512] - 200 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor153)
                call stor153.burn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, mem[512] - 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor50)
                call stor50.0xe7b1d678 with:
                     gas gas_remaining wei
                    args 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor153)
                call stor153.burn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor151, 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 1120] = 0x564a5c2e00000000000000000000000000000000000000000000000000000000
                mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 1124] = msg.sender
                mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 1156] = 96
                mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 1220] = mem[ceil32(return_data.size) + 736]
                mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 1252 len floor32(mem[ceil32(return_data.size) + 736])] = mem[ceil32(return_data.size) + 768 len floor32(mem[ceil32(return_data.size) + 736])]
                mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 1188] = (32 * mem[ceil32(return_data.size) + 736]) + 128
                mem[(32 * mem[ceil32(return_data.size) + 736]) + (32 * _749) + (32 * _103) + ceil32(return_data.size) + 1252] = mem[(32 * _103) + ceil32(return_data.size) + 768]
                mem[(32 * mem[ceil32(return_data.size) + 736]) + (32 * _749) + (32 * _103) + ceil32(return_data.size) + 1284 len floor32(mem[(32 * _103) + ceil32(return_data.size) + 768])] = mem[(32 * _103) + ceil32(return_data.size) + 800 len floor32(mem[(32 * _103) + ceil32(return_data.size) + 768])]
                require ext_code.size(stor50)
                call stor50.0x564a5c2e with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=mem[ceil32(return_data.size) + 736], data=mem[(32 * _749) + (32 * _103) + ceil32(return_data.size) + 1252 len (32 * mem[(32 * _103) + ceil32(return_data.size) + 768]) + (32 * mem[ceil32(return_data.size) + 736]) + 32]), (32 * mem[ceil32(return_data.size) + 736]) + 128
        else:
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] != 10^18:
                revert with 0, 'mul overflow'
            mem[672] = 8
            mem[704] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if not 2 * ext_call.return_data[0]:
                revert with 0, ''
            mem[480] = 2 * ext_call.return_data[0]
            mem[448] = ext_call.return_data[32]
            mem[640] = 10^18 * ext_call.return_data[32] / 2 * ext_call.return_data[0] < 15 * 10^17
            if 10^18 * ext_call.return_data[32] / 2 * ext_call.return_data[0] < 15 * 10^17:
                revert with 0, '7'
            require ext_code.size(stor150)
            call stor150.applyPendingRewards(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[736] = 0x35a058b400000000000000000000000000000000000000000000000000000000
            mem[740] = msg.sender
            require ext_code.size(stor150)
            staticcall stor150.0x35a058b4 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[736 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 736
            require return_data.size >= 96
            _96 = mem[736 len 4], Mask(224, 32, msg.sender) >> 32
            require mem[736 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
            require mem[736 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
            require mem[mem[736 len 4], Mask(224, 32, msg.sender) >> 32 + 736] <= 4294967296 and mem[736 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[736 len 4], Mask(224, 32, msg.sender) >> 32 + 736]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 736] = mem[mem[736 len 4], Mask(224, 32, msg.sender) >> 32 + 736]
            _107 = mem[_96 + 736]
            mem[ceil32(return_data.size) + 768 len floor32(mem[_96 + 736])] = mem[_96 + 768 len floor32(mem[_96 + 736])]
            mem[64] = (32 * _107) + ceil32(return_data.size) + 768
            _730 = uint32(msg.sender), mem[772 len 28]
            require uint32(msg.sender), mem[772 len 28] <= 4294967296
            require uint32(msg.sender), mem[772 len 28] + 32 <= return_data.size
            require mem[uint32(msg.sender), mem[772 len 28] + 736] <= 4294967296 and uint32(msg.sender), mem[772 len 28] + (32 * mem[uint32(msg.sender), mem[772 len 28] + 736]) + 32 <= return_data.size
            mem[(32 * _107) + ceil32(return_data.size) + 768] = mem[uint32(msg.sender), mem[772 len 28] + 736]
            _748 = mem[_730 + 736]
            mem[(32 * _107) + ceil32(return_data.size) + 800 len floor32(mem[_730 + 736])] = mem[_730 + 768 len floor32(mem[_730 + 736])]
            mem[512] = mem[800]
            mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 800] = 0xffc967b00000000000000000000000000000000000000000000000000000000
            mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 804] = 64
            mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 868] = mem[ceil32(return_data.size) + 736]
            mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 900 len floor32(mem[ceil32(return_data.size) + 736])] = mem[ceil32(return_data.size) + 768 len floor32(mem[ceil32(return_data.size) + 736])]
            mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 836] = (32 * mem[ceil32(return_data.size) + 736]) + 96
            mem[(32 * mem[ceil32(return_data.size) + 736]) + (32 * _748) + (32 * _107) + ceil32(return_data.size) + 900] = mem[(32 * _107) + ceil32(return_data.size) + 768]
            mem[(32 * mem[ceil32(return_data.size) + 736]) + (32 * _748) + (32 * _107) + ceil32(return_data.size) + 932 len floor32(mem[(32 * _107) + ceil32(return_data.size) + 768])] = mem[(32 * _107) + ceil32(return_data.size) + 800 len floor32(mem[(32 * _107) + ceil32(return_data.size) + 768])]
            require ext_code.size(stor0)
            staticcall stor0.0xffc967b with:
                    gas gas_remaining wei
                   args Array(len=mem[ceil32(return_data.size) + 736], data=mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 900 len (32 * mem[(32 * _107) + ceil32(return_data.size) + 768]) + (32 * mem[ceil32(return_data.size) + 736]) + 32]), (32 * mem[ceil32(return_data.size) + 736]) + 96
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 800] = 12
            mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 832] = 'sub overflow' << 160
            if 200 * 10^18 > mem[512]:
                revert with 0, 'sub overflow'
            require ext_code.size(stor153)
            staticcall stor153.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < mem[512] - 200 * 10^18:
                revert with 0, '26'
            mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 864] = 12
            mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 896] = 'sub overflow' << 160
            if ext_call.return_data[32] > ext_call.return_data[32]:
                revert with 0, 'sub overflow'
            mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 928] = 12
            mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 960] = 'sub overflow' << 160
            if mem[512] > 2 * ext_call.return_data[0]:
                revert with 0, 'sub overflow'
            if not (2 * ext_call.return_data[0]) - mem[512]:
                require ext_code.size(stor150)
                call stor150.0x66849aed with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 992] = 12
                mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 1024] = 'sub overflow' << 160
                if 200 * 10^18 > mem[512]:
                    revert with 0, 'sub overflow'
                require ext_code.size(stor50)
                call stor50.0xe7b1d678 with:
                     gas gas_remaining wei
                    args (mem[512] - 200 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor153)
                call stor153.burn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, mem[512] - 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor50)
                call stor50.0xe7b1d678 with:
                     gas gas_remaining wei
                    args 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor153)
                call stor153.burn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor151, 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 1056] = 0x564a5c2e00000000000000000000000000000000000000000000000000000000
                mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 1060] = msg.sender
                mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 1092] = 96
                mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 1156] = mem[ceil32(return_data.size) + 736]
                mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 1188 len floor32(mem[ceil32(return_data.size) + 736])] = mem[ceil32(return_data.size) + 768 len floor32(mem[ceil32(return_data.size) + 736])]
                mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 1124] = (32 * mem[ceil32(return_data.size) + 736]) + 128
                mem[(32 * mem[ceil32(return_data.size) + 736]) + (32 * _748) + (32 * _107) + ceil32(return_data.size) + 1188] = mem[(32 * _107) + ceil32(return_data.size) + 768]
                mem[(32 * mem[ceil32(return_data.size) + 736]) + (32 * _748) + (32 * _107) + ceil32(return_data.size) + 1220 len floor32(mem[(32 * _107) + ceil32(return_data.size) + 768])] = mem[(32 * _107) + ceil32(return_data.size) + 800 len floor32(mem[(32 * _107) + ceil32(return_data.size) + 768])]
                require ext_code.size(stor50)
                call stor50.0x564a5c2e with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=mem[ceil32(return_data.size) + 736], data=mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 1188 len (32 * mem[(32 * _107) + ceil32(return_data.size) + 768]) + (32 * mem[ceil32(return_data.size) + 736]) + 32]), (32 * mem[ceil32(return_data.size) + 736]) + 128
            else:
                mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 992] = 8
                mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 1024] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if not (2 * ext_call.return_data[0]) - mem[512]:
                    revert with 0, ''
                if 0 / (2 * ext_call.return_data[0]) - mem[512] < 15 * 10^17:
                    revert with 0, '23'
                require ext_code.size(stor150)
                call stor150.0x66849aed with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 1056] = 12
                mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 1088] = 'sub overflow' << 160
                if 200 * 10^18 > mem[512]:
                    revert with 0, 'sub overflow'
                require ext_code.size(stor50)
                call stor50.0xe7b1d678 with:
                     gas gas_remaining wei
                    args (mem[512] - 200 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor153)
                call stor153.burn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, mem[512] - 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor50)
                call stor50.0xe7b1d678 with:
                     gas gas_remaining wei
                    args 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor153)
                call stor153.burn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor151, 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 1120] = 0x564a5c2e00000000000000000000000000000000000000000000000000000000
                mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 1124] = msg.sender
                mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 1156] = 96
                mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 1220] = mem[ceil32(return_data.size) + 736]
                mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 1252 len floor32(mem[ceil32(return_data.size) + 736])] = mem[ceil32(return_data.size) + 768 len floor32(mem[ceil32(return_data.size) + 736])]
                mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 1188] = (32 * mem[ceil32(return_data.size) + 736]) + 128
                mem[(32 * mem[ceil32(return_data.size) + 736]) + (32 * _748) + (32 * _107) + ceil32(return_data.size) + 1252] = mem[(32 * _107) + ceil32(return_data.size) + 768]
                mem[(32 * mem[ceil32(return_data.size) + 736]) + (32 * _748) + (32 * _107) + ceil32(return_data.size) + 1284 len floor32(mem[(32 * _107) + ceil32(return_data.size) + 768])] = mem[(32 * _107) + ceil32(return_data.size) + 800 len floor32(mem[(32 * _107) + ceil32(return_data.size) + 768])]
                require ext_code.size(stor50)
                call stor50.0x564a5c2e with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=mem[ceil32(return_data.size) + 736], data=mem[(32 * _748) + (32 * _107) + ceil32(return_data.size) + 1252 len (32 * mem[(32 * _107) + ceil32(return_data.size) + 768]) + (32 * mem[ceil32(return_data.size) + 736]) + 32]), (32 * mem[ceil32(return_data.size) + 736]) + 128
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x98c96bbf: 0, 128, 160, 1, 0, 0, msg.sender
    stor100 = 1
}

function sub_5080ab74(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if stor100 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor100 = 2
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = 0
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224] = 0
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256] = 0
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288] = 0
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320] = stor150
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352] = stor50
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384] = stor153
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 416] = stor0
    require ext_code.size(stor150)
    staticcall stor150.0x3735aa20 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, '1'
    require ext_code.size(stor50)
    staticcall stor50.0x896a0089 with:
            gas gas_remaining wei
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 672 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(stor50)
    staticcall stor50.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor51)
    staticcall stor51.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'add overflow'
    if not uint255(ext_call.return_data[0]):
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 480] = 2 * ext_call.return_data[0]
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 448] = ext_call.return_data[32]
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 640] = 0
        require ext_code.size(stor150)
        call stor150.applyPendingRewards(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 672] = 0x35a058b400000000000000000000000000000000000000000000000000000000
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 676] = msg.sender
        require ext_code.size(stor150)
        staticcall stor150.0x35a058b4 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 672 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 672
        require return_data.size >= 96
        _62 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 672 len 4], Mask(224, 32, msg.sender) >> 32
        require mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 672 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
        require mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 672 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
        require mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 672 len 4], Mask(224, 32, msg.sender) >> 32 + 672] <= 4294967296 and mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 672 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 672 len 4], Mask(224, 32, msg.sender) >> 32 + 672]) + 32 <= return_data.size
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 672] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 672 len 4], Mask(224, 32, msg.sender) >> 32 + 672]
        _72 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + _62 + 672]
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 704 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + _62 + 672])] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + _62 + 704 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + _62 + 672])]
        mem[64] = (32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 704
        require uint32(msg.sender), ext_call.return_data[36 len 28] <= 4294967296
        require uint32(msg.sender), ext_call.return_data[36 len 28] + 32 <= return_data.size
        require mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + uint32(msg.sender), ext_call.return_data[36 len 28] + 672] <= 4294967296 and uint32(msg.sender), ext_call.return_data[36 len 28] + (32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + uint32(msg.sender), ext_call.return_data[36 len 28] + 672]) + 32 <= return_data.size
        mem[(32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 704] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + uint32(msg.sender), ext_call.return_data[36 len 28] + 672]
        _998 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + uint32(msg.sender), ext_call.return_data[36 len 28] + 672]
        mem[(32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + uint32(msg.sender), ext_call.return_data[36 len 28] + 672])] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + uint32(msg.sender), ext_call.return_data[36 len 28] + 704 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + uint32(msg.sender), ext_call.return_data[36 len 28] + 672])]
        mem[64] = (32 * _998) + (32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 512] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 736]
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 576] = (32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 704
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544] = (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 672
        mem[(32 * _998) + (32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736] = 0xffc967b00000000000000000000000000000000000000000000000000000000
        mem[(32 * _998) + (32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 740] = 64
        mem[(32 * _998) + (32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 804] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 672]
        mem[(32 * _998) + (32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 836 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 672])] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 704 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 672])]
        mem[(32 * _998) + (32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 772] = (32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 672]) + 96
        mem[(32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 672]) + (32 * _998) + (32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 836] = mem[(32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 704]
        mem[(32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 672]) + (32 * _998) + (32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 868 len floor32(mem[(32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 704])] = mem[(32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736 len floor32(mem[(32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 704])]
        require ext_code.size(stor0)
        staticcall stor0.0xffc967b with:
                gas gas_remaining wei
               args Array(len=mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 672], data=mem[(32 * _998) + (32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 836 len (32 * mem[(32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 704]) + (32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 672]) + 32]), (32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 672]) + 96
        mem[(32 * _998) + (32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 608] = ext_call.return_data[32]
        mem[(32 * _998) + (32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 740] = msg.sender
        require ext_code.size(stor153)
        staticcall stor153.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[(32 * _998) + (32 * _72) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _4425 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 672]
        idx = 0
        s = 0
        t = 0
        while idx < _4425:
            require idx < mem[mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 576]]
            _4436 = mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 576] + 32]
            if t >= mem[96]:
                if mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 576] + 32]:
                    _4465 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                    require idx < mem[mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544]]
                    _4481 = mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544] + 32]
                    mem[mem[64]] = 0xb68b02e200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(_4481)
                    mem[mem[64] + 68] = _4436
                    require ext_code.size(address(_4465))
                    call address(_4465).0xb68b02e2 with:
                         gas gas_remaining wei
                        args msg.sender, address(_4481), _4436
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = s
                t = t
                continue 
            require t < mem[96]
            require idx < mem[mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544]]
            if mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544] + 44 len 20] != mem[(32 * t) + 140 len 20]:
                if mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 576] + 32]:
                    _4497 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                    require idx < mem[mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544]]
                    _4514 = mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544] + 32]
                    mem[mem[64]] = 0xb68b02e200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(_4514)
                    mem[mem[64] + 68] = _4436
                    require ext_code.size(address(_4497))
                    call address(_4497).0xb68b02e2 with:
                         gas gas_remaining wei
                        args msg.sender, address(_4514), _4436
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = s
                t = t
                continue 
            require t < mem[96]
            _4500 = mem[(32 * t) + 128]
            require t < mem[(32 * arg1.length) + 128]
            _4515 = mem[(32 * t) + (32 * arg1.length) + 160]
            require t < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
            _4527 = mem[(32 * t) + (32 * arg2.length) + (32 * arg1.length) + 192]
            if mem[(32 * t) + (32 * arg2.length) + (32 * arg1.length) + 192] > 10^18:
                revert with 0, '19'
            _4556 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 416]
            mem[mem[64] + 4] = mem[(32 * t) + 140 len 20]
            require ext_code.size(address(_4556))
            staticcall address(_4556).0x3b667865 with:
                    gas gas_remaining wei
                   args address(_4500)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _4595 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
            mem[mem[64]] = 0x62f6105b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = address(_4500)
            mem[mem[64] + 68] = _4515
            require ext_code.size(address(_4595))
            call address(_4595).0x62f6105b with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(_4500), _4515
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4608 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 416]
            mem[mem[64] + 4] = address(_4500)
            mem[mem[64] + 36] = _4515
            require ext_code.size(address(_4608))
            staticcall address(_4608).0xcacabd27 with:
                    gas gas_remaining wei
                   args address(_4500), _4515
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _4644 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4644] = 12
            mem[_4644 + 32] = 'sub overflow' << 160
            if _4527 > 10^18:
                _4652 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _4652 + 68] = mem[idx + _4644 + 32]
                    idx = idx + 32
                    continue 
                mem[_4652 + 68] = mem[_4652 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _4652 + -mem[64] + 100
            if not ext_call.return_data[0]:
                _4703 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4703] = 8
                mem[_4703 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _4727 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(_4500)
                mem[mem[64] + 68] = address(_4727)
                mem[mem[64] + 100] = _4515
                mem[mem[64] + 132] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa7b8a537 with:
                     gas gas_remaining wei
                    args msg.sender, address(_4500), address(_4727), _4515, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + s < s:
                    revert with 0, 'add overflow'
                require t < mem[(32 * arg1.length) + 128]
                _4810 = mem[(32 * t) + (32 * arg1.length) + 160]
                _4834 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4834] = 12
                mem[_4834 + 32] = 'sub overflow' << 160
                if _4810 > _4436:
                    _4869 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _4869 + 68] = mem[idx + _4834 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4869 + 68] = mem[_4869 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _4869 + -mem[64] + 100
                if _4436 - _4810:
                    _4945 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                    require idx < mem[mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544]]
                    _4978 = mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544] + 32]
                    mem[mem[64]] = 0xb68b02e200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(_4978)
                    mem[mem[64] + 68] = _4436 - _4810
                    require ext_code.size(address(_4945))
                    call address(_4945).0xb68b02e2 with:
                         gas gas_remaining wei
                        args msg.sender, address(_4978), _4436 - _4810
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if (10^18 * ext_call.return_data[0]) - (_4527 * ext_call.return_data[0]) / ext_call.return_data[0] != -_4527 + 10^18:
                    revert with 0, 'mul overflow'
                _4712 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4712] = 8
                mem[_4712 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _4736 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(_4500)
                mem[mem[64] + 68] = address(_4736)
                mem[mem[64] + 100] = _4515
                mem[mem[64] + 132] = (10^18 * ext_call.return_data[0]) - (_4527 * ext_call.return_data[0]) / 10^18
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa7b8a537 with:
                     gas gas_remaining wei
                    args msg.sender, address(_4500), address(_4736), _4515, (10^18 * ext_call.return_data[0]) - (_4527 * ext_call.return_data[0]) / 10^18
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + s < s:
                    revert with 0, 'add overflow'
                require t < mem[(32 * arg1.length) + 128]
                _4833 = mem[(32 * t) + (32 * arg1.length) + 160]
                _4851 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4851] = 12
                mem[_4851 + 32] = 'sub overflow' << 160
                if _4833 > _4436:
                    _4895 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _4895 + 68] = mem[idx + _4851 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4895 + 68] = mem[_4895 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _4895 + -mem[64] + 100
                if _4436 - _4833:
                    _4974 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                    require idx < mem[mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544]]
                    _5006 = mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544] + 32]
                    mem[mem[64]] = 0xb68b02e200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(_5006)
                    mem[mem[64] + 68] = _4436 - _4833
                    require ext_code.size(address(_4974))
                    call address(_4974).0xb68b02e2 with:
                         gas gas_remaining wei
                        args msg.sender, address(_5006), _4436 - _4833
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = ext_call.return_data[0] + s
            t = t + 1
            continue 
        if s + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'add overflow'
        _4451 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(address(_4451))
        staticcall address(_4451).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != s + ext_call.return_data[0]:
            revert with 0, '6'
        _4538 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
        _4539 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 512]
        _4544 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4544] = 12
        mem[_4544 + 32] = 'sub overflow' << 160
        if 200 * 10^18 > _4539:
            revert with 0, 'sub overflow'
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(address(_4538))
        staticcall address(_4538).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < _4539 - 200 * 10^18:
            revert with 0, '26'
        _4625 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 448]
        _4626 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 480]
        _4627 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 608]
        _4628 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 512]
        _4643 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4643] = 12
        mem[_4643 + 32] = 'sub overflow' << 160
        if _4627 > _4625:
            revert with 0, 'sub overflow'
        _4691 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4691] = 12
        mem[_4691 + 32] = 'sub overflow' << 160
        if _4628 > _4626:
            revert with 0, 'sub overflow'
        if not _4626 - _4628:
            _4766 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320]
            mem[mem[64]] = 0x66849aed00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(address(_4766))
            call address(_4766).0x66849aed with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4802 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
            _4803 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
            _4804 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 512]
            _4829 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4829] = 12
            mem[_4829 + 32] = 'sub overflow' << 160
            if 200 * 10^18 > _4804:
                revert with 0, 'sub overflow'
            require ext_code.size(address(_4802))
            call address(_4802).0xe7b1d678 with:
                 gas gas_remaining wei
                args (_4804 - 200 * 10^18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _4804 - 200 * 10^18
            require ext_code.size(address(_4803))
            call address(_4803).burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _4804 - 200 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5037 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
            require ext_code.size(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 364 len 20])
            call mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 364 len 20].0xe7b1d678 with:
                 gas gas_remaining wei
                args 200 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 36] = 200 * 10^18
            require ext_code.size(address(_5037))
            call address(_5037).burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor151, 200 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5120 = mem[64]
            mem[mem[64]] = 0
            mem[mem[64] + 32] = 0
            mem[64] = mem[64] + 64
            mem[_5120 + 64] = 0
            mem[_5120 + 160] = 1
            mem[_5120 + 96] = 128
            mem[_5120 + 192] = mem[_5120]
            mem[_5120 + 224 len floor32(mem[_5120])] = mem[_5120 + 32 len floor32(mem[_5120])]
            mem[_5120 + 128] = (32 * mem[_5120]) + 160
            mem[(32 * mem[_5120]) + _5120 + 224] = 0
            mem[(32 * mem[_5120]) + _5120 + 256 len 0] = None
            emit 0x98c96bbf: mem[mem[64] len (32 * mem[_5120]) + _5120 + -mem[64] + 256], msg.sender
        else:
            if not _4625 - _4627:
                _4763 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4763] = 8
                mem[_4763 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if not _4626 - _4628:
                    revert with 0, ''
                if 0 / _4626 - _4628 < 15 * 10^17:
                    revert with 0, '23'
                _4971 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320]
                mem[mem[64]] = 0x66849aed00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(_4971))
                call address(_4971).0x66849aed with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5021 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                _5022 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                _5023 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 512]
                _5041 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5041] = 12
                mem[_5041 + 32] = 'sub overflow' << 160
                if 200 * 10^18 > _5023:
                    revert with 0, 'sub overflow'
                require ext_code.size(address(_5021))
                call address(_5021).0xe7b1d678 with:
                     gas gas_remaining wei
                    args (_5023 - 200 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _5023 - 200 * 10^18
                require ext_code.size(address(_5022))
                call address(_5022).burn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, _5023 - 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5151 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                require ext_code.size(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 364 len 20])
                call mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 364 len 20].0xe7b1d678 with:
                     gas gas_remaining wei
                    args 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 36] = 200 * 10^18
                require ext_code.size(address(_5151))
                call address(_5151).burn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor151, 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5192 = mem[64]
                mem[mem[64]] = 0
                mem[mem[64] + 32] = 0
                mem[64] = mem[64] + 64
                mem[_5192 + 64] = 0
                mem[_5192 + 160] = 1
                mem[_5192 + 96] = 128
                mem[_5192 + 192] = mem[_5192]
                mem[_5192 + 224 len floor32(mem[_5192])] = mem[_5192 + 32 len floor32(mem[_5192])]
                mem[(32 * mem[_5192]) + _5192 + 224] = 0
                emit 0x98c96bbf: 0, 128, (32 * mem[_5192]) + 160, 1, mem[_5192], mem[_5192 + 224 len (32 * mem[_5192]) + 32], msg.sender
            else:
                if (10^18 * _4625) - (10^18 * _4627) / _4625 - _4627 != 10^18:
                    revert with 0, 'mul overflow'
                _4769 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4769] = 8
                mem[_4769 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if not _4626 - _4628:
                    revert with 0, ''
                if (10^18 * _4625) - (10^18 * _4627) / _4626 - _4628 < 15 * 10^17:
                    revert with 0, '23'
                _5003 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320]
                mem[mem[64]] = 0x66849aed00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(_5003))
                call address(_5003).0x66849aed with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5038 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                _5039 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                _5040 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 512]
                _5056 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5056] = 12
                mem[_5056 + 32] = 'sub overflow' << 160
                if 200 * 10^18 > _5040:
                    revert with 0, 'sub overflow'
                require ext_code.size(address(_5038))
                call address(_5038).0xe7b1d678 with:
                     gas gas_remaining wei
                    args (_5040 - 200 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _5040 - 200 * 10^18
                require ext_code.size(address(_5039))
                call address(_5039).burn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, _5040 - 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5159 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                require ext_code.size(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 364 len 20])
                call mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 364 len 20].0xe7b1d678 with:
                     gas gas_remaining wei
                    args 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 36] = 200 * 10^18
                require ext_code.size(address(_5159))
                call address(_5159).burn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor151, 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5198 = mem[64]
                mem[mem[64]] = 0
                mem[mem[64] + 32] = 0
                mem[64] = mem[64] + 64
                mem[_5198 + 64] = 0
                mem[_5198 + 160] = 1
                mem[_5198 + 96] = 128
                mem[_5198 + 192] = mem[_5198]
                mem[_5198 + 224 len floor32(mem[_5198])] = mem[_5198 + 32 len floor32(mem[_5198])]
                mem[_5198 + 128] = (32 * mem[_5198]) + 160
                mem[(32 * mem[_5198]) + _5198 + 224] = 0
                mem[(32 * mem[_5198]) + _5198 + 256 len 0] = None
                emit 0x98c96bbf: mem[mem[64] len (32 * mem[_5198]) + _5198 + -mem[64] + 256], msg.sender
    else:
        if not ext_call.return_data[32]:
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 672] = 8
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 704] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if not 2 * ext_call.return_data[0]:
                revert with 0, ''
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 480] = 2 * ext_call.return_data[0]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 448] = ext_call.return_data[32]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 640] = 0 / 2 * ext_call.return_data[0] < 15 * 10^17
            if 0 / 2 * ext_call.return_data[0] < 15 * 10^17:
                revert with 0, '7'
            require ext_code.size(stor150)
            call stor150.applyPendingRewards(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 736] = 0x35a058b400000000000000000000000000000000000000000000000000000000
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 740] = msg.sender
            require ext_code.size(stor150)
            staticcall stor150.0x35a058b4 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 736 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736
            require return_data.size >= 96
            _95 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 736 len 4], Mask(224, 32, msg.sender) >> 32
            require mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 736 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
            require mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 736 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
            require mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 736 len 4], Mask(224, 32, msg.sender) >> 32 + 736] <= 4294967296 and mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 736 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 736 len 4], Mask(224, 32, msg.sender) >> 32 + 736]) + 32 <= return_data.size
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 736 len 4], Mask(224, 32, msg.sender) >> 32 + 736]
            _105 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + _95 + 736]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 768 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + _95 + 736])] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + _95 + 768 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + _95 + 736])]
            mem[64] = (32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 768
            _985 = uint32(msg.sender), mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 772 len 28]
            require uint32(msg.sender), mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 772 len 28] <= 4294967296
            require uint32(msg.sender), mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 772 len 28] + 32 <= return_data.size
            require mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + uint32(msg.sender), mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 772 len 28] + 736] <= 4294967296 and uint32(msg.sender), mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 772 len 28] + (32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + uint32(msg.sender), mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 772 len 28] + 736]) + 32 <= return_data.size
            mem[(32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 768] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + uint32(msg.sender), mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 772 len 28] + 736]
            _1000 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + _985 + 736]
            mem[(32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 800 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + _985 + 736])] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + _985 + 768 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + _985 + 736])]
            mem[64] = (32 * _1000) + (32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 800
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 512] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 800]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 576] = (32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 768
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544] = (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736
            mem[(32 * _1000) + (32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 800] = 0xffc967b00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1000) + (32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 804] = 64
            mem[(32 * _1000) + (32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 868] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736]
            mem[(32 * _1000) + (32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 900 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736])] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 768 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736])]
            mem[(32 * _1000) + (32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 836] = (32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736]) + 96
            mem[(32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736]) + (32 * _1000) + (32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 900] = mem[(32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 768]
            mem[(32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736]) + (32 * _1000) + (32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 932 len floor32(mem[(32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 768])] = mem[(32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 800 len floor32(mem[(32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 768])]
            require ext_code.size(stor0)
            staticcall stor0.0xffc967b with:
                    gas gas_remaining wei
                   args Array(len=mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736], data=mem[(32 * _1000) + (32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 900 len (32 * mem[(32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 768]) + (32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736]) + 32]), (32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736]) + 96
            mem[(32 * _1000) + (32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 800 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 608] = ext_call.return_data[32]
            mem[(32 * _1000) + (32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 804] = msg.sender
            require ext_code.size(stor153)
            staticcall stor153.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[(32 * _1000) + (32 * _105) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 800] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _4429 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736]
            idx = 0
            s = 0
            t = 0
            while idx < _4429:
                require idx < mem[mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 576]]
                _4440 = mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 576] + 32]
                if t >= mem[96]:
                    if mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 576] + 32]:
                        _4477 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                        require idx < mem[mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544]]
                        _4483 = mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544] + 32]
                        mem[mem[64]] = 0xb68b02e200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(_4483)
                        mem[mem[64] + 68] = _4440
                        require ext_code.size(address(_4477))
                        call address(_4477).0xb68b02e2 with:
                             gas gas_remaining wei
                            args msg.sender, address(_4483), _4440
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                require t < mem[96]
                require idx < mem[mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544]]
                if mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544] + 44 len 20] != mem[(32 * t) + 140 len 20]:
                    if mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 576] + 32]:
                        _4509 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                        require idx < mem[mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544]]
                        _4520 = mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544] + 32]
                        mem[mem[64]] = 0xb68b02e200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(_4520)
                        mem[mem[64] + 68] = _4440
                        require ext_code.size(address(_4509))
                        call address(_4509).0xb68b02e2 with:
                             gas gas_remaining wei
                            args msg.sender, address(_4520), _4440
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                require t < mem[96]
                _4512 = mem[(32 * t) + 128]
                require t < mem[(32 * arg1.length) + 128]
                _4521 = mem[(32 * t) + (32 * arg1.length) + 160]
                require t < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                _4537 = mem[(32 * t) + (32 * arg2.length) + (32 * arg1.length) + 192]
                if mem[(32 * t) + (32 * arg2.length) + (32 * arg1.length) + 192] > 10^18:
                    revert with 0, '19'
                _4564 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 416]
                mem[mem[64] + 4] = mem[(32 * t) + 140 len 20]
                require ext_code.size(address(_4564))
                staticcall address(_4564).0x3b667865 with:
                        gas gas_remaining wei
                       args address(_4512)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _4601 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                mem[mem[64]] = 0x62f6105b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = address(_4512)
                mem[mem[64] + 68] = _4521
                require ext_code.size(address(_4601))
                call address(_4601).0x62f6105b with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), address(_4512), _4521
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4612 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 416]
                mem[mem[64] + 4] = address(_4512)
                mem[mem[64] + 36] = _4521
                require ext_code.size(address(_4612))
                staticcall address(_4612).0xcacabd27 with:
                        gas gas_remaining wei
                       args address(_4512), _4521
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _4648 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4648] = 12
                mem[_4648 + 32] = 'sub overflow' << 160
                if _4537 > 10^18:
                    _4664 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _4664 + 68] = mem[idx + _4648 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4664 + 68] = mem[_4664 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _4664 + -mem[64] + 100
                if not ext_call.return_data[0]:
                    _4711 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4711] = 8
                    mem[_4711 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _4733 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(_4512)
                    mem[mem[64] + 68] = address(_4733)
                    mem[mem[64] + 100] = _4521
                    mem[mem[64] + 132] = 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa7b8a537 with:
                         gas gas_remaining wei
                        args msg.sender, address(_4512), address(_4733), _4521, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + s < s:
                        revert with 0, 'add overflow'
                    require t < mem[(32 * arg1.length) + 128]
                    _4828 = mem[(32 * t) + (32 * arg1.length) + 160]
                    _4846 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4846] = 12
                    mem[_4846 + 32] = 'sub overflow' << 160
                    if _4828 > _4440:
                        _4889 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 12
                        idx = 0
                        while idx < 12:
                            mem[idx + _4889 + 68] = mem[idx + _4846 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4889 + 68] = mem[_4889 + 88 len 12]
                        revert with memory
                          from mem[64]
                           len _4889 + -mem[64] + 100
                    if _4440 - _4828:
                        _4963 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                        require idx < mem[mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544]]
                        _5002 = mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544] + 32]
                        mem[mem[64]] = 0xb68b02e200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(_5002)
                        mem[mem[64] + 68] = _4440 - _4828
                        require ext_code.size(address(_4963))
                        call address(_4963).0xb68b02e2 with:
                             gas gas_remaining wei
                            args msg.sender, address(_5002), _4440 - _4828
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if (10^18 * ext_call.return_data[0]) - (_4537 * ext_call.return_data[0]) / ext_call.return_data[0] != -_4537 + 10^18:
                        revert with 0, 'mul overflow'
                    _4714 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4714] = 8
                    mem[_4714 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _4742 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(_4512)
                    mem[mem[64] + 68] = address(_4742)
                    mem[mem[64] + 100] = _4521
                    mem[mem[64] + 132] = (10^18 * ext_call.return_data[0]) - (_4537 * ext_call.return_data[0]) / 10^18
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa7b8a537 with:
                         gas gas_remaining wei
                        args msg.sender, address(_4512), address(_4742), _4521, (10^18 * ext_call.return_data[0]) - (_4537 * ext_call.return_data[0]) / 10^18
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + s < s:
                        revert with 0, 'add overflow'
                    require t < mem[(32 * arg1.length) + 128]
                    _4845 = mem[(32 * t) + (32 * arg1.length) + 160]
                    _4861 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4861] = 12
                    mem[_4861 + 32] = 'sub overflow' << 160
                    if _4845 > _4440:
                        _4907 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 12
                        idx = 0
                        while idx < 12:
                            mem[idx + _4907 + 68] = mem[idx + _4861 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4907 + 68] = mem[_4907 + 88 len 12]
                        revert with memory
                          from mem[64]
                           len _4907 + -mem[64] + 100
                    if _4440 - _4845:
                        _4998 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                        require idx < mem[mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544]]
                        _5018 = mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544] + 32]
                        mem[mem[64]] = 0xb68b02e200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(_5018)
                        mem[mem[64] + 68] = _4440 - _4845
                        require ext_code.size(address(_4998))
                        call address(_4998).0xb68b02e2 with:
                             gas gas_remaining wei
                            args msg.sender, address(_5018), _4440 - _4845
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = ext_call.return_data[0] + s
                t = t + 1
                continue 
            if s + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'add overflow'
            _4459 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(address(_4459))
            staticcall address(_4459).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != s + ext_call.return_data[0]:
                revert with 0, '6'
            _4542 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
            _4543 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 512]
            _4546 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4546] = 12
            mem[_4546 + 32] = 'sub overflow' << 160
            if 200 * 10^18 > _4543:
                revert with 0, 'sub overflow'
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(address(_4542))
            staticcall address(_4542).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < _4543 - 200 * 10^18:
                revert with 0, '26'
            _4635 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 448]
            _4636 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 480]
            _4637 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 608]
            _4638 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 512]
            _4647 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4647] = 12
            mem[_4647 + 32] = 'sub overflow' << 160
            if _4637 > _4635:
                revert with 0, 'sub overflow'
            _4693 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4693] = 12
            mem[_4693 + 32] = 'sub overflow' << 160
            if _4638 > _4636:
                revert with 0, 'sub overflow'
            if not _4636 - _4638:
                _4778 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320]
                mem[mem[64]] = 0x66849aed00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(_4778))
                call address(_4778).0x66849aed with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4820 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                _4821 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                _4822 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 512]
                _4841 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4841] = 12
                mem[_4841 + 32] = 'sub overflow' << 160
                if 200 * 10^18 > _4822:
                    revert with 0, 'sub overflow'
                require ext_code.size(address(_4820))
                call address(_4820).0xe7b1d678 with:
                     gas gas_remaining wei
                    args (_4822 - 200 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _4822 - 200 * 10^18
                require ext_code.size(address(_4821))
                call address(_4821).burn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, _4822 - 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5049 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                require ext_code.size(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 364 len 20])
                call mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 364 len 20].0xe7b1d678 with:
                     gas gas_remaining wei
                    args 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 36] = 200 * 10^18
                require ext_code.size(address(_5049))
                call address(_5049).burn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor151, 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5130 = mem[64]
                mem[mem[64]] = 0
                mem[mem[64] + 32] = 0
                mem[64] = mem[64] + 64
                mem[_5130 + 64] = 0
                mem[_5130 + 160] = 1
                mem[_5130 + 96] = 128
                mem[_5130 + 192] = mem[_5130]
                mem[_5130 + 224 len floor32(mem[_5130])] = mem[_5130 + 32 len floor32(mem[_5130])]
                mem[_5130 + 128] = (32 * mem[_5130]) + 160
                mem[(32 * mem[_5130]) + _5130 + 224] = 0
                mem[(32 * mem[_5130]) + _5130 + 256 len 0] = None
                emit 0x98c96bbf: mem[mem[64] len (32 * mem[_5130]) + _5130 + -mem[64] + 256], msg.sender
            else:
                if not _4635 - _4637:
                    _4765 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4765] = 8
                    mem[_4765 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    if not _4636 - _4638:
                        revert with 0, ''
                    if 0 / _4636 - _4638 < 15 * 10^17:
                        revert with 0, '23'
                    _4995 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320]
                    mem[mem[64]] = 0x66849aed00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(_4995))
                    call address(_4995).0x66849aed with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5031 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                    _5032 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                    _5033 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 512]
                    _5053 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5053] = 12
                    mem[_5053 + 32] = 'sub overflow' << 160
                    if 200 * 10^18 > _5033:
                        revert with 0, 'sub overflow'
                    require ext_code.size(address(_5031))
                    call address(_5031).0xe7b1d678 with:
                         gas gas_remaining wei
                        args (_5033 - 200 * 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _5033 - 200 * 10^18
                    require ext_code.size(address(_5032))
                    call address(_5032).burn(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _5033 - 200 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5155 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                    require ext_code.size(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 364 len 20])
                    call mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 364 len 20].0xe7b1d678 with:
                         gas gas_remaining wei
                        args 200 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 200 * 10^18
                    require ext_code.size(address(_5155))
                    call address(_5155).burn(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor151, 200 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5196 = mem[64]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = 0
                    mem[64] = mem[64] + 64
                    mem[_5196 + 64] = 0
                    mem[_5196 + 160] = 1
                    mem[_5196 + 96] = 128
                    mem[_5196 + 192] = mem[_5196]
                    mem[_5196 + 224 len floor32(mem[_5196])] = mem[_5196 + 32 len floor32(mem[_5196])]
                    mem[_5196 + 128] = (32 * mem[_5196]) + 160
                    mem[(32 * mem[_5196]) + _5196 + 224] = 0
                    mem[(32 * mem[_5196]) + _5196 + 256 len 0] = None
                    emit 0x98c96bbf: mem[mem[64] len (32 * mem[_5196]) + _5196 + -mem[64] + 256], msg.sender
                else:
                    if (10^18 * _4635) - (10^18 * _4637) / _4635 - _4637 != 10^18:
                        revert with 0, 'mul overflow'
                    _4781 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4781] = 8
                    mem[_4781 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    if not _4636 - _4638:
                        revert with 0, ''
                    if (10^18 * _4635) - (10^18 * _4637) / _4636 - _4638 < 15 * 10^17:
                        revert with 0, '23'
                    _5015 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320]
                    mem[mem[64]] = 0x66849aed00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(_5015))
                    call address(_5015).0x66849aed with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5050 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                    _5051 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                    _5052 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 512]
                    _5062 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5062] = 12
                    mem[_5062 + 32] = 'sub overflow' << 160
                    if 200 * 10^18 > _5052:
                        revert with 0, 'sub overflow'
                    require ext_code.size(address(_5050))
                    call address(_5050).0xe7b1d678 with:
                         gas gas_remaining wei
                        args (_5052 - 200 * 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _5052 - 200 * 10^18
                    require ext_code.size(address(_5051))
                    call address(_5051).burn(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _5052 - 200 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5171 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                    require ext_code.size(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 364 len 20])
                    call mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 364 len 20].0xe7b1d678 with:
                         gas gas_remaining wei
                        args 200 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 200 * 10^18
                    require ext_code.size(address(_5171))
                    call address(_5171).burn(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor151, 200 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5202 = mem[64]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = 0
                    mem[64] = mem[64] + 64
                    mem[_5202 + 64] = 0
                    mem[_5202 + 160] = 1
                    mem[_5202 + 96] = 128
                    mem[_5202 + 192] = mem[_5202]
                    mem[_5202 + 224 len floor32(mem[_5202])] = mem[_5202 + 32 len floor32(mem[_5202])]
                    mem[_5202 + 128] = (32 * mem[_5202]) + 160
                    mem[(32 * mem[_5202]) + _5202 + 224] = 0
                    mem[(32 * mem[_5202]) + _5202 + 256 len 0] = None
                    emit 0x98c96bbf: mem[mem[64] len (32 * mem[_5202]) + _5202 + -mem[64] + 256], msg.sender
        else:
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] != 10^18:
                revert with 0, 'mul overflow'
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 672] = 8
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 704] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if not 2 * ext_call.return_data[0]:
                revert with 0, ''
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 480] = 2 * ext_call.return_data[0]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 448] = ext_call.return_data[32]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 640] = 10^18 * ext_call.return_data[32] / 2 * ext_call.return_data[0] < 15 * 10^17
            if 10^18 * ext_call.return_data[32] / 2 * ext_call.return_data[0] < 15 * 10^17:
                revert with 0, '7'
            require ext_code.size(stor150)
            call stor150.applyPendingRewards(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 736] = 0x35a058b400000000000000000000000000000000000000000000000000000000
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 740] = msg.sender
            require ext_code.size(stor150)
            staticcall stor150.0x35a058b4 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 736 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736
            require return_data.size >= 96
            _98 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 736 len 4], Mask(224, 32, msg.sender) >> 32
            require mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 736 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
            require mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 736 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
            require mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 736 len 4], Mask(224, 32, msg.sender) >> 32 + 736] <= 4294967296 and mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 736 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 736 len 4], Mask(224, 32, msg.sender) >> 32 + 736]) + 32 <= return_data.size
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 736 len 4], Mask(224, 32, msg.sender) >> 32 + 736]
            _109 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + _98 + 736]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 768 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + _98 + 736])] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + _98 + 768 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + _98 + 736])]
            mem[64] = (32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 768
            _981 = uint32(msg.sender), mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 772 len 28]
            require uint32(msg.sender), mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 772 len 28] <= 4294967296
            require uint32(msg.sender), mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 772 len 28] + 32 <= return_data.size
            require mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + uint32(msg.sender), mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 772 len 28] + 736] <= 4294967296 and uint32(msg.sender), mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 772 len 28] + (32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + uint32(msg.sender), mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 772 len 28] + 736]) + 32 <= return_data.size
            mem[(32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 768] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + uint32(msg.sender), mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 772 len 28] + 736]
            _999 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + _981 + 736]
            mem[(32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 800 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + _981 + 736])] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + _981 + 768 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + _981 + 736])]
            mem[64] = (32 * _999) + (32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 800
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 512] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 800]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 576] = (32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 768
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544] = (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736
            mem[(32 * _999) + (32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 800] = 0xffc967b00000000000000000000000000000000000000000000000000000000
            mem[(32 * _999) + (32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 804] = 64
            mem[(32 * _999) + (32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 868] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736]
            mem[(32 * _999) + (32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 900 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736])] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 768 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736])]
            mem[(32 * _999) + (32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 836] = (32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736]) + 96
            mem[(32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736]) + (32 * _999) + (32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 900] = mem[(32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 768]
            mem[(32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736]) + (32 * _999) + (32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 932 len floor32(mem[(32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 768])] = mem[(32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 800 len floor32(mem[(32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 768])]
            require ext_code.size(stor0)
            staticcall stor0.0xffc967b with:
                    gas gas_remaining wei
                   args Array(len=mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736], data=mem[(32 * _999) + (32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 900 len (32 * mem[(32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 768]) + (32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736]) + 32]), (32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736]) + 96
            mem[(32 * _999) + (32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 800 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 608] = ext_call.return_data[32]
            mem[(32 * _999) + (32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 804] = msg.sender
            require ext_code.size(stor153)
            staticcall stor153.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[(32 * _999) + (32 * _109) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 800] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _4427 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 736]
            idx = 0
            s = 0
            t = 0
            while idx < _4427:
                require idx < mem[mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 576]]
                _4438 = mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 576] + 32]
                if t >= mem[96]:
                    if mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 576] + 32]:
                        _4471 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                        require idx < mem[mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544]]
                        _4482 = mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544] + 32]
                        mem[mem[64]] = 0xb68b02e200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(_4482)
                        mem[mem[64] + 68] = _4438
                        require ext_code.size(address(_4471))
                        call address(_4471).0xb68b02e2 with:
                             gas gas_remaining wei
                            args msg.sender, address(_4482), _4438
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                require t < mem[96]
                require idx < mem[mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544]]
                if mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544] + 44 len 20] != mem[(32 * t) + 140 len 20]:
                    if mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 576] + 32]:
                        _4503 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                        require idx < mem[mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544]]
                        _4517 = mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544] + 32]
                        mem[mem[64]] = 0xb68b02e200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(_4517)
                        mem[mem[64] + 68] = _4438
                        require ext_code.size(address(_4503))
                        call address(_4503).0xb68b02e2 with:
                             gas gas_remaining wei
                            args msg.sender, address(_4517), _4438
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                require t < mem[96]
                _4506 = mem[(32 * t) + 128]
                require t < mem[(32 * arg1.length) + 128]
                _4518 = mem[(32 * t) + (32 * arg1.length) + 160]
                require t < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                _4532 = mem[(32 * t) + (32 * arg2.length) + (32 * arg1.length) + 192]
                if mem[(32 * t) + (32 * arg2.length) + (32 * arg1.length) + 192] > 10^18:
                    revert with 0, '19'
                _4560 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 416]
                mem[mem[64] + 4] = mem[(32 * t) + 140 len 20]
                require ext_code.size(address(_4560))
                staticcall address(_4560).0x3b667865 with:
                        gas gas_remaining wei
                       args address(_4506)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _4598 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                mem[mem[64]] = 0x62f6105b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = address(_4506)
                mem[mem[64] + 68] = _4518
                require ext_code.size(address(_4598))
                call address(_4598).0x62f6105b with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), address(_4506), _4518
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4610 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 416]
                mem[mem[64] + 4] = address(_4506)
                mem[mem[64] + 36] = _4518
                require ext_code.size(address(_4610))
                staticcall address(_4610).0xcacabd27 with:
                        gas gas_remaining wei
                       args address(_4506), _4518
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _4646 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4646] = 12
                mem[_4646 + 32] = 'sub overflow' << 160
                if _4532 > 10^18:
                    _4658 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _4658 + 68] = mem[idx + _4646 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4658 + 68] = mem[_4658 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _4658 + -mem[64] + 100
                if not ext_call.return_data[0]:
                    _4707 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4707] = 8
                    mem[_4707 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _4730 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(_4506)
                    mem[mem[64] + 68] = address(_4730)
                    mem[mem[64] + 100] = _4518
                    mem[mem[64] + 132] = 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa7b8a537 with:
                         gas gas_remaining wei
                        args msg.sender, address(_4506), address(_4730), _4518, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + s < s:
                        revert with 0, 'add overflow'
                    require t < mem[(32 * arg1.length) + 128]
                    _4819 = mem[(32 * t) + (32 * arg1.length) + 160]
                    _4840 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4840] = 12
                    mem[_4840 + 32] = 'sub overflow' << 160
                    if _4819 > _4438:
                        _4879 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 12
                        idx = 0
                        while idx < 12:
                            mem[idx + _4879 + 68] = mem[idx + _4840 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4879 + 68] = mem[_4879 + 88 len 12]
                        revert with memory
                          from mem[64]
                           len _4879 + -mem[64] + 100
                    if _4438 - _4819:
                        _4954 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                        require idx < mem[mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544]]
                        _4990 = mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544] + 32]
                        mem[mem[64]] = 0xb68b02e200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(_4990)
                        mem[mem[64] + 68] = _4438 - _4819
                        require ext_code.size(address(_4954))
                        call address(_4954).0xb68b02e2 with:
                             gas gas_remaining wei
                            args msg.sender, address(_4990), _4438 - _4819
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if (10^18 * ext_call.return_data[0]) - (_4532 * ext_call.return_data[0]) / ext_call.return_data[0] != -_4532 + 10^18:
                        revert with 0, 'mul overflow'
                    _4713 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4713] = 8
                    mem[_4713 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _4739 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(_4506)
                    mem[mem[64] + 68] = address(_4739)
                    mem[mem[64] + 100] = _4518
                    mem[mem[64] + 132] = (10^18 * ext_call.return_data[0]) - (_4532 * ext_call.return_data[0]) / 10^18
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa7b8a537 with:
                         gas gas_remaining wei
                        args msg.sender, address(_4506), address(_4739), _4518, (10^18 * ext_call.return_data[0]) - (_4532 * ext_call.return_data[0]) / 10^18
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + s < s:
                        revert with 0, 'add overflow'
                    require t < mem[(32 * arg1.length) + 128]
                    _4839 = mem[(32 * t) + (32 * arg1.length) + 160]
                    _4856 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4856] = 12
                    mem[_4856 + 32] = 'sub overflow' << 160
                    if _4839 > _4438:
                        _4901 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 12
                        idx = 0
                        while idx < 12:
                            mem[idx + _4901 + 68] = mem[idx + _4856 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4901 + 68] = mem[_4901 + 88 len 12]
                        revert with memory
                          from mem[64]
                           len _4901 + -mem[64] + 100
                    if _4438 - _4839:
                        _4986 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                        require idx < mem[mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544]]
                        _5012 = mem[(32 * idx) + mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 544] + 32]
                        mem[mem[64]] = 0xb68b02e200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(_5012)
                        mem[mem[64] + 68] = _4438 - _4839
                        require ext_code.size(address(_4986))
                        call address(_4986).0xb68b02e2 with:
                             gas gas_remaining wei
                            args msg.sender, address(_5012), _4438 - _4839
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = ext_call.return_data[0] + s
                t = t + 1
                continue 
            if s + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'add overflow'
            _4455 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(address(_4455))
            staticcall address(_4455).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != s + ext_call.return_data[0]:
                revert with 0, '6'
            _4540 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
            _4541 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 512]
            _4545 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4545] = 12
            mem[_4545 + 32] = 'sub overflow' << 160
            if 200 * 10^18 > _4541:
                revert with 0, 'sub overflow'
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(address(_4540))
            staticcall address(_4540).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < _4541 - 200 * 10^18:
                revert with 0, '26'
            _4630 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 448]
            _4631 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 480]
            _4632 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 608]
            _4633 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 512]
            _4645 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4645] = 12
            mem[_4645 + 32] = 'sub overflow' << 160
            if _4632 > _4630:
                revert with 0, 'sub overflow'
            _4692 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4692] = 12
            mem[_4692 + 32] = 'sub overflow' << 160
            if _4633 > _4631:
                revert with 0, 'sub overflow'
            if not _4631 - _4633:
                _4772 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320]
                mem[mem[64]] = 0x66849aed00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(_4772))
                call address(_4772).0x66849aed with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4811 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                _4812 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                _4813 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 512]
                _4835 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4835] = 12
                mem[_4835 + 32] = 'sub overflow' << 160
                if 200 * 10^18 > _4813:
                    revert with 0, 'sub overflow'
                require ext_code.size(address(_4811))
                call address(_4811).0xe7b1d678 with:
                     gas gas_remaining wei
                    args (_4813 - 200 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _4813 - 200 * 10^18
                require ext_code.size(address(_4812))
                call address(_4812).burn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, _4813 - 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5043 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                require ext_code.size(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 364 len 20])
                call mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 364 len 20].0xe7b1d678 with:
                     gas gas_remaining wei
                    args 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 36] = 200 * 10^18
                require ext_code.size(address(_5043))
                call address(_5043).burn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor151, 200 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5125 = mem[64]
                mem[mem[64]] = 0
                mem[mem[64] + 32] = 0
                mem[64] = mem[64] + 64
                mem[_5125 + 64] = 0
                mem[_5125 + 160] = 1
                mem[_5125 + 96] = 128
                mem[_5125 + 192] = mem[_5125]
                mem[_5125 + 224 len floor32(mem[_5125])] = mem[_5125 + 32 len floor32(mem[_5125])]
                mem[_5125 + 128] = (32 * mem[_5125]) + 160
                mem[(32 * mem[_5125]) + _5125 + 224] = 0
                mem[(32 * mem[_5125]) + _5125 + 256 len 0] = None
                emit 0x98c96bbf: mem[mem[64] len (32 * mem[_5125]) + _5125 + -mem[64] + 256], msg.sender
            else:
                if not _4630 - _4632:
                    _4764 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4764] = 8
                    mem[_4764 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    if not _4631 - _4633:
                        revert with 0, ''
                    if 0 / _4631 - _4633 < 15 * 10^17:
                        revert with 0, '23'
                    _4983 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320]
                    mem[mem[64]] = 0x66849aed00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(_4983))
                    call address(_4983).0x66849aed with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5026 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                    _5027 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                    _5028 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 512]
                    _5047 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5047] = 12
                    mem[_5047 + 32] = 'sub overflow' << 160
                    if 200 * 10^18 > _5028:
                        revert with 0, 'sub overflow'
                    require ext_code.size(address(_5026))
                    call address(_5026).0xe7b1d678 with:
                         gas gas_remaining wei
                        args (_5028 - 200 * 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _5028 - 200 * 10^18
                    require ext_code.size(address(_5027))
                    call address(_5027).burn(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _5028 - 200 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5153 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                    require ext_code.size(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 364 len 20])
                    call mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 364 len 20].0xe7b1d678 with:
                         gas gas_remaining wei
                        args 200 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 200 * 10^18
                    require ext_code.size(address(_5153))
                    call address(_5153).burn(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor151, 200 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5194 = mem[64]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = 0
                    mem[64] = mem[64] + 64
                    mem[_5194 + 64] = 0
                    mem[_5194 + 160] = 1
                    mem[_5194 + 96] = 128
                    mem[_5194 + 192] = mem[_5194]
                    mem[_5194 + 224 len floor32(mem[_5194])] = mem[_5194 + 32 len floor32(mem[_5194])]
                    mem[_5194 + 128] = (32 * mem[_5194]) + 160
                    mem[(32 * mem[_5194]) + _5194 + 224] = 0
                    mem[(32 * mem[_5194]) + _5194 + 256 len 0] = None
                    emit 0x98c96bbf: mem[mem[64] len (32 * mem[_5194]) + _5194 + -mem[64] + 256], msg.sender
                else:
                    if (10^18 * _4630) - (10^18 * _4632) / _4630 - _4632 != 10^18:
                        revert with 0, 'mul overflow'
                    _4775 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4775] = 8
                    mem[_4775 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    if not _4631 - _4633:
                        revert with 0, ''
                    if (10^18 * _4630) - (10^18 * _4632) / _4631 - _4633 < 15 * 10^17:
                        revert with 0, '23'
                    _5009 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320]
                    mem[mem[64]] = 0x66849aed00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(_5009))
                    call address(_5009).0x66849aed with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5044 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
                    _5045 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                    _5046 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 512]
                    _5059 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5059] = 12
                    mem[_5059 + 32] = 'sub overflow' << 160
                    if 200 * 10^18 > _5046:
                        revert with 0, 'sub overflow'
                    require ext_code.size(address(_5044))
                    call address(_5044).0xe7b1d678 with:
                         gas gas_remaining wei
                        args (_5046 - 200 * 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _5046 - 200 * 10^18
                    require ext_code.size(address(_5045))
                    call address(_5045).burn(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _5046 - 200 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5165 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
                    require ext_code.size(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 364 len 20])
                    call mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 364 len 20].0xe7b1d678 with:
                         gas gas_remaining wei
                        args 200 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 200 * 10^18
                    require ext_code.size(address(_5165))
                    call address(_5165).burn(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor151, 200 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5200 = mem[64]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = 0
                    mem[64] = mem[64] + 64
                    mem[_5200 + 64] = 0
                    mem[_5200 + 160] = 1
                    mem[_5200 + 96] = 128
                    mem[_5200 + 192] = mem[_5200]
                    mem[_5200 + 224 len floor32(mem[_5200])] = mem[_5200 + 32 len floor32(mem[_5200])]
                    mem[_5200 + 128] = (32 * mem[_5200]) + 160
                    mem[(32 * mem[_5200]) + _5200 + 224] = 0
                    mem[(32 * mem[_5200]) + _5200 + 256 len 0] = None
                    emit 0x98c96bbf: mem[mem[64] len (32 * mem[_5200]) + _5200 + -mem[64] + 256], msg.sender
    stor100 = 1
}



}
